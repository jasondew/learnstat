class CreateQuizQuestions < ActiveRecord::Migration
  def self.up
    create_table :quiz_questions do |t|
			t.column :quiz_id, :int
			t.column :question_id, :int
    end
  end

  def self.down
    drop_table :quiz_questions
  end
end
