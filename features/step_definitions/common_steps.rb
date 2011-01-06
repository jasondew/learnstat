Given /^I am logged in$/ do
  @user = User.where(:email => "demo@user.com").first
  @user ||= Factory(:user, :email => "demo@user.com", :password => "demodemo", :password_confirmation => "demodemo")

  visit "/login"

  fill_in "user_session_email", :with => "demo@user.com"
  fill_in "user_session_password", :with => "demodemo"

  click "Log In"
end

When /I search for "([^"]*)"$/ do |criteria|
  visit "/"

  fill_in "criteria", :with => criteria

  find("#site_search_submit").click
end

Then /I should see an error message/ do
  page.should have_css("#alert")
end

Then /I should see a success message/ do
  page.should have_css("#notice")
end
