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
              :blackboard_username => "instructor",
              :registration_code => "stats",
              :instructor => true,
              :course_id => 1

  User.create :email => "student1@gmail.com",
              :password => "password",
              :password_confirmation => "password",
              :first_name => "Student",
              :last_name => "One",
              :blackboard_username => "student1",
              :registration_code => "stats",
              :course_id => 1

  User.create :email => "student2@gmail.com",
              :password => "password",
              :password_confirmation => "password",
              :first_name => "Student",
              :last_name => "Two",
              :blackboard_username => "student2",
              :registration_code => "stats",
              :course_id => 1
end
