require 'calabash-android/calabash_steps'

Then(/^(.*) should have (.*) text/) do |element, text|
  @current_page.element_should_have_text(element, text)
end

Then(/^ I double tab on (.*) element/) do |element| 
	@current_page.double_tap_on(element)
end

Then(/^I pick day (.*) and month (.*) and year (.*)$/) do |day, month, year|
  @current_page.pick_date(date_picker, day, month, year)
end

