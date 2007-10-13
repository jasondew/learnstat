class CreateGrades < ActiveRecord::Migration
  def self.up
    create_table :grades do |t|
      t.integer :user_id, :course_id, :exam_id
      t.float :value
      t.timestamps 
    end
  end

  def self.down
    drop_table :grades
  end
end
