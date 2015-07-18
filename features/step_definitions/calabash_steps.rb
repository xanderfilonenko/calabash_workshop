require 'calabash-android/calabash_steps'

Then(/^I pick day (.*) and month (.*) and year (.*)$/) do |day, month, year|
  @current_page.pick_date(date_picker, day, month, year)
end