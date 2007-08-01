class ChangeGradeField < ActiveRecord::Migration
  def self.up
		change_column :grades, :grade, :decimal, { :precision => 6, :default => 0, :scale => 2 }
  end

  def self.down
		change_column :grades, :grade, :decimal
  end
end
