require 'faker'

desc "Create some random students"
task :fake_students => :environment do
  number = (ENV["NUMBER"] || 3).to_i
  password = "password"

  number.times do |i|
    User.create( :login => "student#{i}",
                 :email => Faker::Internet.email,
                 :first_name => Faker::Name.first_name,
                 :last_name => Faker::Name.last_name,
                 :blackboard_username => Faker::Name.last_name.downcase,
                 :password => password,
                 :password_confirmation => password,
                 :registration_code => 'stat110f07',
                 :instructor => false ).activate
  end
end
