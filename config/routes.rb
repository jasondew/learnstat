ActionController::Routing::Routes.draw do |map|

  # The priority is based upon order of creation: first created -> highest priority.
  
  map.resources :users do |user|
    user.resources :courses do |course|
      course.resources :quizzes do |quiz|
        quiz.resources :grades, :question_responses
      end
    end
  end

  map.resources :activations
  map.resource :session, :controller => 'sessions'

  map.resources :courses do |course|
    course.resources :announcements, :documents

    course.resources :quizzes do |quiz|
      quiz.resources :quiz_questions
    end
  end

  map.resources :questions do |question|
    question.resources :question_choices
  end

  # Sample of named route:
  # map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  map.signup '/signup', :controller => 'users',    :action => 'new'
  map.login  '/login',  :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'

  # You can have the root of your site routed by hooking up '' 
  # -- just remember to delete public/index.html.
  # map.connect '', :controller => "welcome"
  map.connect '', :controller => 'courses'

  # Allow downloading Web Service WSDL as a file with an extension
  # instead of a file named 'wsdl'
  map.connect ':controller/service.wsdl', :action => 'wsdl'

  # Install the default route as the lowest priority.
  #map.connect ':controller/:action/:id.:format'
  #map.connect ':controller/:action/:id'
end
