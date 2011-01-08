Factory.define(:user) do |f|
  f.sequence(:email) {|n| "email_#{n}@email.com" }
  f.password "FooBar!"
  f.password_confirmation "FooBar!"
  f.first_name "John"
  f.last_name "Doe"
  f.sequence(:blackboard_username) {|n| "blackboard_username_#{n}" }
  f.association :course
end

Factory.define(:instructor, :parent => :user) do |f|
  f.instructor true
end

Factory.define(:course) do |f|
  f.user_id 1
  f.department "STAT"
  f.number "110"
  f.section "801"
  f.semester_id 1
  f.year 2010
  f.registration_code "stats"
  f.registration_closes_at 10.days.from_now
end

Factory.define(:exam) do |f|
end

Factory.define(:grade) do |f|
  f.value 100
end

Factory.define(:document) do |f|
  f.label "Some document"
end

Factory.define(:announcement) do |f|
  f.title "Some announcement"
end

Factory.define(:question) do |f|
  f.content "What is the square root of pi?"
  f.chapter 1
  f.answer 2
end

Factory.define(:quiz) do |f|
  f.name "Quiz 1"
  f.due_at { 2.days.from_now }
  f.viewable_at { Time.now }
end

Factory.define(:quiz_question) do |f|
  f.association :quiz
  f.association :question
end

Factory.define(:question_choice) do |f|
  f.association :question
  f.content "The wrong answer"
end

Factory.define(:quiz_question_response) do |f|
  f.quiz_response_id 1
  f.association :quiz_question
  f.association :question_choice
end
