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

Factory.define(:quiz) do |f|
  f.name "Quiz 1"
  f.due_at { 2.days.from_now }
  f.viewable_at { Time.now }
  f.after_create do |quiz|
    quiz.quiz_questions << Factory(:quiz_question, :quiz => quiz)
    quiz.save
  end
end

Factory.define(:open_quiz, :parent => :quiz) do |f|
  f.due_at { 2.days.from_now }
end

Factory.define(:closed_quiz, :parent => :quiz) do |f|
  f.viewable_at { 10.days.ago }
  f.due_at { 1.second.ago }
end

Factory.define(:hidden_quiz, :parent => :quiz) do |f|
  f.viewable_at { 1.days.from_now }
  f.due_at { 10.days.from_now }
end

Factory.define(:quiz_question) do |f|
  f.association :quiz
  f.association :question
  f.after_create do |quiz_question|

  end
end

Factory.define(:quiz_question_response) do |f|
  f.quiz_response_id 1
  f.association :quiz_question
  f.association :question_choice
end

Factory.define(:question) do |f|
  f.content "What is the square root of pi?"
  f.chapter 1
  f.answer 2
  f.choices { [Factory.build(:question_choice)] }

  f.after_create {|question| question.update_attribute :answer, question.choice_ids.first }
end

Factory.define(:question_choice) do |f|
  f.content "The answer"
end
