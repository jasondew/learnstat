Given /^I am logged in(:?| as an instructor)$/ do |instructor|
  @count = (@count || 0) + 1
  @user_email = "user#{@count}@gmail.com"

  unless @user and @user.instructor == instructor
    @user = Factory(:user, :email => @user_email, :password => "demodemo", :password_confirmation => "demodemo", :instructor => !!instructor)
  end

  @user.course = @course if @course

  visit "/login"

  fill_in "user_session_email", :with => @user_email
  fill_in "user_session_password", :with => "demodemo"

  click "Login"
end

Then /^I should be able to reauthenticate with "([^"]*)"$/ do |password|
  visit "/logout"
  visit "/login"

  fill_in "user_session_email", :with => @user.email
  fill_in "user_session_password", :with => password

  click "Login"

  Then %{I should see "Welcome, #{@user.name}."}
end

Then /^I should see an error message$/ do
  page.should have_css("#alert")
end

Then /^I should see a success message$/ do
  page.should have_css("#notice")
end
