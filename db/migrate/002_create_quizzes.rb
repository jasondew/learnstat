class CreateQuizzes < ActiveRecord::Migration
  def self.up
    create_table :quizzes do |t|
			t.column :name, :string
			t.column :date_assigned, :datetime
			t.column :date_due, :datetime
    end
  end

  def self.down
    drop_table :quizzes
  end
end
