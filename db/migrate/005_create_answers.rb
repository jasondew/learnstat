class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
			t.column :user_id, :int
			t.column :quiz_id, :int
			t.column :question_id, :int
			t.column :choice, :int
    end
  end

  def self.down
    drop_table :answers
  end
end
