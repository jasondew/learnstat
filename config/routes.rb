Learnstat::Application.routes.draw do
  resources :users
  resource :session
  resources :activations

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

  match "/signup" => "users#new", :as => :signup
  match "/login" => "sessions#new", :as => :login
  match "/logout" => "sessions#destroy", :as => :logout
  match "/activate/:activation_code" => "activations#new", :as => :activate

  root "courses#index"
end
