# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110103041052) do

  create_table "announcements", :force => true do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
  end

  add_index "announcements", ["course_id"], :name => "index_announcements_on_course_id"

  create_table "audits", :force => true do |t|
    t.integer  "user_id"
    t.text     "params"
    t.string   "url"
    t.string   "ip"
    t.string   "method"
    t.datetime "created_at"
  end

  create_table "courses", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "department"
    t.string   "number"
    t.string   "section"
    t.string   "registration_code"
    t.integer  "year"
    t.integer  "semester_id"
    t.datetime "registration_closes_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.string   "label"
    t.string   "file"
    t.datetime "viewable_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "documents", ["course_id"], :name => "index_documents_on_course_id"

  create_table "exams", :force => true do |t|
    t.integer  "course_id"
    t.string   "name"
    t.date     "given_on"
    t.boolean  "final"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exams", ["course_id"], :name => "index_exams_on_course_id"

  create_table "grades", :force => true do |t|
    t.integer  "user_id"
    t.integer  "exam_id"
    t.decimal  "value",      :precision => 5, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "grades", ["exam_id"], :name => "index_grades_on_exam_id"

  create_table "question_choices", :force => true do |t|
    t.integer "question_id"
    t.text    "content"
  end

  add_index "question_choices", ["question_id"], :name => "index_question_choices_on_question_id"

  create_table "question_responses", :force => true do |t|
    t.integer  "user_id"
    t.integer  "quiz_question_id"
    t.integer  "question_choice_id"
    t.boolean  "correct"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "question_responses", ["quiz_question_id", "user_id", "correct"], :name => "index_question_responses_on_qq_id_and_user_id_and_correct"
  add_index "question_responses", ["quiz_question_id"], :name => "index_question_responses_on_quiz_question_id"
  add_index "question_responses", ["user_id"], :name => "index_question_responses_on_user_id"

  create_table "questions", :force => true do |t|
    t.text    "content"
    t.integer "answer"
    t.integer "chapter"
  end

  create_table "quiz_questions", :force => true do |t|
    t.integer "quiz_id"
    t.integer "question_id"
    t.boolean "forgiven",    :default => false
  end

  add_index "quiz_questions", ["quiz_id"], :name => "index_quiz_questions_on_quiz_id"

  create_table "quizzes", :force => true do |t|
    t.integer  "course_id"
    t.string   "name"
    t.datetime "due_at"
    t.datetime "viewable_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quizzes", ["course_id"], :name => "index_quizzes_on_course_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.integer  "course_id"
    t.string   "email",                                  :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "blackboard_username"
    t.string   "registration_code"
    t.boolean  "instructor",          :default => false
    t.string   "crypted_password",                       :null => false
    t.string   "password_salt",                          :null => false
    t.string   "persistence_token",                      :null => false
    t.integer  "login_count",         :default => 0,     :null => false
    t.integer  "failed_login_count",  :default => 0,     :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["last_request_at"], :name => "index_users_on_last_request_at"
  add_index "users", ["persistence_token"], :name => "index_users_on_persistence_token"

end
