class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.column :content,   :text
      t.column :answer,    :integer
      t.column :chapter,   :integer
    end

  end

  def self.down
    drop_table :questions
  end
end
