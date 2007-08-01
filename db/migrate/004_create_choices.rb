class CreateChoices < ActiveRecord::Migration
  def self.up
    create_table :choices do |t|
			t.column :question_id, :int
			t.column :body, :text
    end
  end

  def self.down
    drop_table :choices
  end
end
