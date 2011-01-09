Learnstat::Application.routes.draw do
  resources :users
  resource :user_session
  resource :account

  match "/signup" => "users#new"
  match "/login"  => "user_sessions#create"
  match "/logout" => "user_sessions#destroy"

  resources :courses do
    resources :quizzes, :only => [:index, :new, :create]
    resources :announcements
    resources :documents
    resources :exams, :only => [:new, :create]

    resource :gradebook
    resource :roster
  end

  resources :exams, :only => [:show, :edit, :update]

  resources :quizzes, :except => [:new, :create] do
    resources :questions, :controller => "QuizQuestions", :only => [:new, :create]
    resources :responses, :controller => "QuizResponses", :except => [:index, :destroy]
  end

  resources :quiz_questions, :except => [:new, :create]

  resources :questions do
    resources :choices, :controller => "QuestionChoices"
  end

  root :to => "courses#index"
end
