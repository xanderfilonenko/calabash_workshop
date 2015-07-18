require 'calabash-android/calabash_steps'

<<<<<<< HEAD
Then(/^ I double tab on (.*) element/) do |element| 
	@current_page.double_tap_on(element)
=======
Then(/^I pick day (.*) and month (.*) and year (.*)$/) do |day, month, year|
  @current_page.pick_date(date_picker, day, month, year)
>>>>>>> 4554b4cd626eff5e92c4b52425e6321b191ef957
end