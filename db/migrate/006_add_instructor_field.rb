class AddInstructorField < ActiveRecord::Migration
  def self.up
		add_column :users, :instructor, :boolean, :default => 0
  end

  def self.down
		remove_column :users, :instructor
  end
end
