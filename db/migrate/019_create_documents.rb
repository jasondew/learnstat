class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.column :label, :string
      t.column :created_at, :datetime
      t.column :content, :binary
      t.column :filename, :string
      t.column :content_type, :string
    end

#		execute "ALTER TABLE `documents` MODIFY `content` mediumblob"
  end

  def self.down
    drop_table :documents
  end
end
