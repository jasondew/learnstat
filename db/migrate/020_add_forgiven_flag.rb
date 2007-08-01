class AddForgivenFlag < ActiveRecord::Migration
  def self.up
		add_column :quiz_questions, :forgiven, :boolean, :default => false
  end

  def self.down
		remove_column :quiz_questions, :forgiven
  end
end
