class AddChapterToQuestion < ActiveRecord::Migration
  def self.up
		add_column :questions, :chapter, :integer
  end

  def self.down
		remove_column :questions, :chapter
  end
end
