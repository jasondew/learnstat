class ChangeQuizDates < ActiveRecord::Migration
  def self.up
		add_column :quizzes, :created_at, :datetime
		add_column :quizzes, :due, :datetime

		remove_column :quizzes, :date_assigned
		remove_column :quizzes, :date_due
  end

  def self.down
		add_column :quizzes, :date_assigned, :datetime
		add_column :quizzes, :date_due, :datetime

		remove_column :quizzes, :created_at
		remove_column :quizzes, :due
  end
end
