class ChangeAnswersChoiceId < ActiveRecord::Migration
  def self.up
		rename_column :answers, :choice, :choice_id
  end

  def self.down
		rename_column :answers, :choice_id, :choice
  end
end
