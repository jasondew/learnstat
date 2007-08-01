class AddAuthentication < ActiveRecord::Migration
  def self.up
		add_column :users, :login, :string, { :limit => 80, :null => true }
		remove_column :users, :username
  end

  def self.down
		add_column :users, :username, :string
		remove_column :users, :login
  end
end
