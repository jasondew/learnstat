class CreateExams < ActiveRecord::Migration
  def self.up
    create_table :exams do |t|
      t.integer :course_id
      t.string :name
      t.datetime :given_on
      t.boolean :final

      t.timestamps 
    end
  end

  def self.down
    drop_table :exams
  end
end
