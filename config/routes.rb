ActionController::Routing::Routes.draw do |map|

  map.resources :users
  map.resources :activations

  map.resource :session, :controller => 'sessions'

  map.resources :courses do |course|
    course.resources :announcements, :documents
    course.resources :exams, :has_many => :grades
    course.resources :quizzes, :has_many => [:quiz_questions, :question_responses, :response_distributions],
                               :has_one => :grade_distribution
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
