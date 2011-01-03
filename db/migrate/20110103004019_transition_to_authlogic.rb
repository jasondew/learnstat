class TransitionToAuthlogic < ActiveRecord::Migration
  def self.up
    create_table "access_tokens", :force => true do |t|
      t.integer  "user_id"
      t.string   "type",       :limit => 30
      t.string   "key"
      t.string   "token",      :limit => 1024
      t.string   "secret"
      t.boolean  "active"
      t.timestamps
    end

    add_index "access_tokens", ["key"], :name => "index_access_tokens_on_key", :unique => true

    create_table "sessions", :force => true do |t|
      t.string   "session_id", :null => false
      t.text     "data"
      t.timestamps
    end

    add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
    add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

    drop_table "users"
    create_table "users", :force => true do |t|
      t.string   "login"
      t.string   "email"
      t.string   "blackboard_username"
      t.string   "registration_code"
      t.boolean  "instructor",                              :default => false
      t.string   "crypted_password"
      t.string   "password_salt"
      t.string   "persistence_token",                :null => false
      t.integer  "login_count",       :default => 0, :null => false
      t.datetime "last_request_at"
      t.datetime "last_login_at"
      t.datetime "current_login_at"
      t.string   "last_login_ip"
      t.string   "current_login_ip"
      t.integer  "active_token_id"
      t.timestamps
    end

    add_index "users", ["active_token_id"], :name => "index_users_on_active_token_id"
    add_index "users", ["last_request_at"], :name => "index_users_on_last_request_at"
    add_index "users", ["login"], :name => "index_users_on_login"
    add_index "users", ["persistence_token"], :name => "index_users_on_persistence_token"
  end

  def self.down
    remove_index "users", :name => "index_users_on_persistence_token"
    remove_index "users", :name => "index_users_on_login"
    remove_index "users", :name => "index_users_on_last_request_at"
    remove_index "users", :name => "index_users_on_active_token_id"

    drop_table "users"
    create_table "users" do |t|
      t.integer  "course_id"
      t.string   "login"
      t.string   "email"
      t.string   "first_name"
      t.string   "last_name"
      t.string   "blackboard_username"
      t.string   "registration_code"
      t.boolean  "instructor",                              :default => false
      t.string   "crypted_password",          :limit => 40
      t.string   "salt",                      :limit => 40
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "remember_token"
      t.datetime "remember_token_expires_at"
      t.string   "activation_code",           :limit => 40
      t.datetime "activated_at"
      t.datetime "last_login"
    end

    remove_index "sessions", :name => "index_sessions_on_updated_at"
    remove_index "sessions", :name => "index_sessions_on_session_id"

    drop_table "sessions"

    remove_index "access_tokens", :name => "index_access_tokens_on_key"

    drop_table "access_tokens"
  end
end
