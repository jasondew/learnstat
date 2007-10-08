ActionController::Routing::Routes.draw do |map|

  map.resources :users do |user|
    user.resources :courses do |course|
      course.resources :quizzes do |quiz|
        quiz.resources :question_responses
      end
      course.resources :grades
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

  map.signup '/signup', :controller => 'users',    :action => 'new'
  map.login  '/login',  :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'

  map.connect '', :controller => 'courses'

end
