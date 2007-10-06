class CreateGrades < ActiveRecord::Migration
  def self.up
    create_table :grades do |t|
      t.column :user_id,    :integer
      t.column :course_id,  :integer
      t.column :name,       :string
      t.column :value,      :float
      t.column :created_at, :datetime
    end
  end

  def self.down
    drop_table :grades
  end
end
