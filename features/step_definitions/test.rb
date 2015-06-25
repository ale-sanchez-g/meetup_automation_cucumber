Given(/^I open my browser$/) do
  puts "Browser is open by env file"
end

Given(/^i enter "(.*?)"$/) do |arg1|
  @browser.goto(arg1)
end

When(/^I search for "(.*?)"$/) do |arg1|
  @browser.text_field(:name, "q").set arg1
  @browser.text_field(:name, "q").send_keys :enter
end

Then(/^I get a list of results about "(.*?)"$/) do |arg1|
  expect(@browser.text.include?(arg1)).to be true
end

Then(/^I get an error message that "(.*?)" did not match anywhere$/) do |arg1|
  string = "Your search - #{arg1} - did not match any documents."
  expect(@browser.text).to match(/string/)
end

Then(/^It translates to "(.*?)"$/) do |arg1|
 expect(@browser.text).to match(/#{arg1}/)
end