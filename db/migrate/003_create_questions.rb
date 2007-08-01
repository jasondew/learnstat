class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
			t.column :quiz_id, :int
			t.column :body, :text
			t.column :answer, :int
    end
  end

  def self.down
    drop_table :questions
  end
end
