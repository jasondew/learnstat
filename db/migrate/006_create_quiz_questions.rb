class CreateQuizQuestions < ActiveRecord::Migration
  def self.up
    create_table :quiz_questions do |t|
      t.column :quiz_id,     :integer
      t.column :question_id, :integer
      t.column :forgiven,    :boolean, :default => false
    end
  end

  def self.down
    drop_table :quiz_questions
  end
end
