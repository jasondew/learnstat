Learnstat::Application.routes.draw do
  resources :users
  resource :user_session

  match "/signup" => "users#new"
  match "/login"  => "user_session#create"
  match "/logout" => "user_session#destroy"

  resources :courses do
    resources :announcements
    resources :documents
    resources :exams
    resources :quizzes do
      resources :quiz_questions do
        collection do
          post :search
        end
      end
    end

    resource :gradebook
    resource :roster do
      member do
        post :impersonate
      end
    end

    resources :users do
      member do
        post :reset_password
      end
    end
  end

  resources :questions do
    resources :question_choices
  end

  root :to => "courses#index"
end
