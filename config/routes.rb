Learnstat::Application.routes.draw do
  resources :users
  resource :user_session

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

  match 'logout' => 'user_sessions#destroy', :as => :logout
  match 'login' => 'user_sessions#new', :as => :login
  match 'authenticate' => 'user_sessions#create', :as => :authenticate, :via => :post
  match 'signup' => 'users#new', :as => :signup
  match 'connect' => 'users#update', :as => :connect, :via => :post

  root :to => "courses#index"
end
