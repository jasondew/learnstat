class CreateAnnouncements < ActiveRecord::Migration
  def self.up
    create_table :announcements do |t|
      t.column :course_id,  :integer
      t.column :user_id,    :integer

      t.column :title,      :string
      t.column :body,       :text

      t.column :created_at, :datetime
    end
  end

  def self.down
    drop_table :announcements
  end
end
