class AddIndexes < ActiveRecord::Migration
  def self.up
    add_index :quiz_questions, :quiz_id
    add_index :question_responses, :user_id
    add_index :question_responses, [:quiz_id, :user_id, :correct]
  end

  def self.down
    remove_index :question_responses, :column => [:quiz_id, :user_id, :correct]
    remove_index :question_responses, :column => :user_id
    remove_index :quiz_questions, :column => :quiz_id
  end
end
