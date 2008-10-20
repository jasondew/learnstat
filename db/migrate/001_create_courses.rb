class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.column :title,                  :string
      t.column :department,             :string
      t.column :number,                 :string
      t.column :semester,               :integer
      t.column :year,                   :integer
      t.column :section,                :integer

      t.column :instructor_id,          :integer

      t.column :registration_code,      :string
      t.column :registration_closed_at, :datetime

      t.column :created_at,             :datetime
      t.column :updated_at,             :datetime
    end

    Course.create :title => 'Statistics Z110, Fall II, 2008', :department => 'STAT', :number => 'Z110',
                  :semester => Course::FallII, :year => 2008, :section => 851, :registration_code => 'stat110f08',
                  :registration_closed_at => 1.week.from_now
  end

  def self.down
    drop_table :courses
  end
end
