class RemovingBlackboardUsername < ActiveRecord::Migration
  def self.up
    remove_column :users, :blackboard_username
  end

  def self.down
    add_column :users, :blackboard_username, :string
  end
end
