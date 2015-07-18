require 'calabash-android/calabash_steps'

When(/^ I open Login page$/) do
	
end

Then(/^(.*) should be on the screen/) do |element|
	element_should_be_present(element)
end

Then(/^(.*) should not be on the screen/) do |element|
	element_should_not_be_present(element)
end

Then(/^(.*) should have (.*) text/) do |element, text|
  @current_page.element_should_have_text(element, text)
end

Then(/^ I double tab on (.*) element/) do |element| 
	@current_page.double_tap_on(element)
end

Then(/^I pick day (.*) and month (.*) and year (.*)$/) do |day, month, year|
  @current_page.pick_date(date_picker, day, month, year)
end

Then(/^I pick hour (.*) and minute (.*)$/) do |hour, minute|
  @current_page.pick_time(time_picker, hour, minute)
end
