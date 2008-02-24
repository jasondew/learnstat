class CreateQuestionChoices < ActiveRecord::Migration
  def self.up
    create_table :question_choices do |t|
      t.column :question_id, :integer
      t.column :content, :text
    end
  end

  def self.down
    drop_table :question_choices
  end
end
