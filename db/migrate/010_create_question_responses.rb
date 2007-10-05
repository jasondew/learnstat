class CreateQuestionResponses < ActiveRecord::Migration
  def self.up
    create_table :question_responses do |t|
      t.column :user_id,            :integer
      t.column :course_id,          :integer
      t.column :quiz_id,            :integer
      t.column :quiz_question_id,   :integer
      t.column :question_choice_id, :integer
      t.column :correct,            :boolean
      t.column :created_at,         :datetime
    end
  end

  def self.down
    drop_table :question_responses
  end
end
