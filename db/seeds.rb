if Course.count == 0
  Course.create :title => "Statistics",
                :registration_code => "stats"
end

if User.count == 0
  User.create :email => "instructor@gmail.com",
              :password => "password",
              :password_confirmation => "password",
              :first_name => "Mr.",
              :last_name => "Instructor",
              :blackboard_username => "instructor",
              :registration_code => "stats",
              :instructor => true

  User.create :email => "student1@gmail.com",
              :password => "password",
              :password_confirmation => "password",
              :first_name => "Student",
              :last_name => "One",
              :blackboard_username => "student1",
              :registration_code => "stats"

  User.create :email => "student2@gmail.com",
              :password => "password",
              :password_confirmation => "password",
              :first_name => "Student",
              :last_name => "Two",
              :blackboard_username => "student2",
              :registration_code => "stats"
end
