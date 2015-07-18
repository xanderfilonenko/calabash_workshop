require 'calabash-android/calabash_steps'

Then(/^ I double tab on (.*) element/) do |element| 
	@current_page.double_tap_on(element)
end