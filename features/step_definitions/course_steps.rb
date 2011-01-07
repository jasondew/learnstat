Given /^a course with registration code "([^"]+)"$/ do |registration_code|
  @course = Factory(:course, :registration_code => registration_code)
end

Given /^a course with the following students:$/ do |attributes_table|
  @course = Factory(:course)
  @students = attributes_table.hashes.map {|attributes| Factory(:user, attributes.update(:course => @course)) }
end

Given /^I am logged in as a student in the course$/ do
  @user = @students.first
  visit "/login"

  fill_in "user_session_email", :with => @user.email
  fill_in "user_session_password", :with => "FooBar!"

  click "Login"
end
