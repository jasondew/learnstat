class CreateGrades < ActiveRecord::Migration
  def self.up
    create_table :grades do |t|
      t.column :user_id,   :integer
      t.column :quiz_id,   :integer
      t.column :value,     :float
    end
  end

  def self.down
    drop_table :grades
  end
end
