Given /^a course with registration code "([^"]+)"$/ do |registration_code|
  @course = Factory(:course, :registration_code => registration_code)
end
