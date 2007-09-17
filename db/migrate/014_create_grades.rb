class CreateGrades < ActiveRecord::Migration
  def self.up
    create_table :grades do |t|
			t.column :user_id, :int
			t.column :quiz_id, :int
			t.column :value, :decimal, { :precision => 7, :default => 0, :scale => 6 }
			t.column :updated_at, :datetime
    end
  end

  def self.down
    drop_table :grades
  end
end
