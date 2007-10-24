class AddIndexes < ActiveRecord::Migration
  def self.up
    add_index :announcements, :course_id
    add_index :documents, :course_id
    add_index :exams, :course_id
    add_index :grades, :course_id

    add_index :question_choices, :question_id

    add_index :question_responses, :user_id
    add_index :question_responses, :quiz_id
    add_index :question_responses, [:quiz_id, :user_id, :correct]

    add_index :quizzes, :course_id
    add_index :quiz_questions, :quiz_id
    add_index :users, :course_id
    add_index :users, [:course_id, :instructor]
  end

  def self.down
    remove_index :users, :column => [:course_id, :instructor]
    remove_index :users, :column => :course_id
    remove_index :quiz_questions, :column => :quiz_id
    remove_index :quizzes, :column => :course_id

    remove_index :question_responses, :column => [:quiz_id, :user_id, :correct]
    remove_index :question_responses, :column => :quiz_id
    remove_index :question_responses, :column => :user_id

    remove_index :question_choices, :column => :question_id

    remove_index :grades, :column => :course_id
    remove_index :exams, :column => :course_id
    remove_index :documents, :column => :course_id
    remove_index :announcements, :column => :course_id
  end
end
