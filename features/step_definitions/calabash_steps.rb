require 'calabash-android/calabash_steps'

When(/^I open Login page$/) do
	
end

Then(/^(.*) should be on the screen$/) do |element|
	@current_page.element_should_be_present(element)
end

Then(/^(.*) should not be on the screen$/) do |element|
	@current_page.element_should_not_be_present(element)
end

Then(/^(.*) should have (.*) text$/) do |element, text|
  @current_page.element_should_have_text(element, text)
end

Then(/^I double tab on (.*) element$/) do |element| 
	@current_page.double_tap_on(element)
end

Then(/^I pick day (.*) and month (.*) and year (.*)$/) do |day, month, year|
  @current_page.pick_date(date_picker, day, month, year)
end

Then(/^I pick hour (.*) and minute (.*)$/) do |hour, minute|
  @current_page.pick_time(time_picker, hour, minute)
end

When(/^I open Start page$/) do 
	@current_page = page(StartPage).await
end

Then(/^I tap on (.*)$/ ) do |element|
	@current_page.tap_on(element)
end

Then(/^I make long tap on (.*)$/ ) do |element|
	@current_page.long_tap_on(element)
end

And(/^(.*) page is loaded$/) do |page_name|
  @current_page = step("I make object for #{page_name}  page")
end

And(/^I fill in (.*) with (.*)$/) do |element, text|
  @current_page.fill_in_input(element,text)
end

Then(/^I make object for (.*) page$/) do |page_name|
  page_name = page_name + " Page"
  page(Object.const_get(page_name.gsub(/\w+/, &:capitalize).gsub(" ", ""))).await
end

Then(/^I sign in as (.*)$/) do |user|
	@current_page.sign_in_as user
end

Then(/^I should be sign in$/) do
	@current_page = step("I make object for Home page")
	unless @current_page.has_element?("Workout button")
		@current_page = step("I make object for Start page")
		@current_page.tap_on("log in button")
		@current_page = step("I make object for Login page")
		step("I sign in as test")
	end
	@current_page = step("I make object for Home page")
end

When(/^I select (.*) option from (.*) dropdown$/) do |option, element|
  @current_page.select(element, option)
end




