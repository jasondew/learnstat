class AddCorrectBooleanToAnswers < ActiveRecord::Migration
  def self.up
		add_column :answers, :correct, :boolean
  end

  def self.down
		remove_column :answers, :correct
  end
end
