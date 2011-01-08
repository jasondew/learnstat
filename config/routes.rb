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
    resources :exams

    resource :gradebook
    resource :roster
  end

  resources :quizzes, :except => [:new, :create] do
    resources :questions, :controller => "QuizQuestions" do
      resources :response, :controller => "QuizQuestionResponses"
    end
  end

  resources :questions do
    resources :choices, :controller => "QuestionChoices"
  end

  root :to => "courses#index"
end
