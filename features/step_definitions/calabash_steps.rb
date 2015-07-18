require 'calabash-android/calabash_steps'

When(/^ I open Login page$/) do
	
end

Then(/^(.*) should be on the screen/) do |element|
	element_should_be_present(element)
end

Then(/^(.*) should not be on the screen/) do |element|
	element_should_not_be_present(element)
end