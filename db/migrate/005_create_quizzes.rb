class CreateQuizzes < ActiveRecord::Migration
  def self.up
    create_table :quizzes do |t|
      t.column :course_id,   :integer

      t.column :name,        :string
      t.column :due_at,      :datetime

      t.column :viewable_at, :datetime
      t.column :created_at,  :datetime
    end
  end

  def self.down
    drop_table :quizzes
  end
end
