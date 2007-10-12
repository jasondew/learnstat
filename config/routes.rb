ActionController::Routing::Routes.draw do |map|

  map.resources :users, :activations
  map.resource :session, :controller => 'sessions'

  map.resources :courses do |course|
    course.resources :announcements, :documents, :grades
    course.resources :quizzes, :has_many => [:quiz_questions, :question_responses, :reports]
  end

  map.resources :questions do |question|
    question.resources :question_choices
  end

  map.signup '/signup', :controller => 'users',    :action => 'new'
  map.login  '/login',  :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.activate '/activate/:activation_code', :controller => 'activations', :action => 'new'

  map.connect '', :controller => 'courses'

end
