class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.column :course_id,    :integer
      t.column :user_id,      :integer

      t.column :label,        :string
      t.column :viewable_at,  :datetime

      t.column :content_type, :string
      t.column :filename,     :string     
      t.column :size,         :integer

      t.column :created_at,   :datetime
    end

  end

  def self.down
    drop_table :documents
  end
end
