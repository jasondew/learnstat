class ChangeQuestions < ActiveRecord::Migration
  def self.up
		remove_column :questions, :quiz_id
  end

  def self.down
		add_column :questions, :quiz_id, :int
  end
end
