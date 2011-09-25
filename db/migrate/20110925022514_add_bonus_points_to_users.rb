class AddBonusPointsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :bonus_points, :integer, :default => 0
  end

  def self.down
    remove_column :users, :bonus_points
  end
end
