class CreateAnnouncements < ActiveRecord::Migration
  def self.up
    create_table :announcements do |t|
      t.column :user_id, :int
      t.column :title, :string
      t.column :content, :text
      t.column :created_at, :datetime
    end
  end

  def self.down
    drop_table :announcements
  end
end
