# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 20) do

  create_table "announcements", :force => true do |t|
    t.column "user_id",    :integer
    t.column "title",      :string
    t.column "content",    :text
    t.column "created_at", :datetime
  end

  create_table "answers", :force => true do |t|
    t.column "user_id",     :integer
    t.column "quiz_id",     :integer
    t.column "question_id", :integer
    t.column "choice_id",   :integer
    t.column "correct",     :boolean
  end

  create_table "choices", :force => true do |t|
    t.column "question_id", :integer
    t.column "body",        :text
  end

  create_table "documents", :force => true do |t|
    t.column "label",        :string
    t.column "created_at",   :datetime
    t.column "content",      :binary
    t.column "filename",     :string
    t.column "content_type", :string
  end

  create_table "grades", :force => true do |t|
    t.column "user_id",    :integer
    t.column "quiz_id",    :integer
    t.column "grade",      :decimal,  :default => 0.0
    t.column "updated_at", :datetime
  end

  create_table "questions", :force => true do |t|
    t.column "body",    :text
    t.column "answer",  :integer
    t.column "chapter", :integer
  end

  create_table "quiz_questions", :force => true do |t|
    t.column "quiz_id",     :integer
    t.column "question_id", :integer
    t.column "forgiven",    :boolean, :default => false
  end

  create_table "quizzes", :force => true do |t|
    t.column "name",       :string
    t.column "created_at", :datetime
    t.column "due",        :datetime
  end

  create_table "users", :force => true do |t|
    t.column "blackboard_username", :string
    t.column "first_name",          :string
    t.column "last_name",           :string
    t.column "password",            :string
    t.column "instructor",          :boolean,               :default => false
    t.column "login",               :string,  :limit => 80
  end

end
