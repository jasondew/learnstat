ActionController::Routing::Routes.draw do |map|

  map.resources :users
  map.resources :activations

  map.resource :session, :controller => 'sessions'

  map.resources :courses do |course|
    course.resources :announcements, :documents
    course.resources :exams, :has_many => :grades, :has_one => :exam_distribution
    course.resources :quizzes, :has_many => [:question_responses, :response_distributions], :has_one => :grade_distribution,
                               :member => { :mark_viewable => :post } do |quiz|
      quiz.resources :quiz_questions, :collection => { :search => :post }
    end
    course.resource :gradebook, :roster
    course.resources :users, :member => { :reset_password => :post }
  end

  map.resources :questions, :collection => { :search => :post } do |question|
    question.resources :question_choices
  end

  map.signup '/signup', :controller => 'users',    :action => 'new'
  map.login  '/login',  :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.activate '/activate/:activation_code', :controller => 'activations', :action => 'new'

  map.connect '', :controller => 'courses'

end
