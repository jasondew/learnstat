if Course.count == 0
  Course.create :title => "Statistics",
                :department => "STAT",
                :number => "110",
                :section => "801",
                :semester_id => 1,
                :year => 2010,
                :registration_closes_at => 10.days.from_now,
                :registration_code => "stats",
                :user_id => 1
end

if User.count == 0
  User.create :email => "instructor@gmail.com",
              :password => "password",
              :password_confirmation => "password",
              :first_name => "Mr.",
              :last_name => "Instructor",
              :registration_code => "stats",
              :instructor => true,
              :course_id => 1

  User.create :email => "student1@gmail.com",
              :password => "password",
              :password_confirmation => "password",
              :first_name => "Student",
              :last_name => "One",
              :registration_code => "stats",
              :course_id => 1

  User.create :email => "student2@gmail.com",
              :password => "password",
              :password_confirmation => "password",
              :first_name => "Student",
              :last_name => "Two",
              :registration_code => "stats",
              :course_id => 1
end

Question.delete_all
QuestionChoice.delete_all
if Question.count == 0
  %w(chapters1-9.sql chapters10-16.sql chapters17-24.sql).each do |filename|
    File.readlines("#{Rails.root}/db/#{filename}").each do |sql|
      next if sql.blank?
      ActiveRecord::Base.connection.execute sql
    end
  end
end
