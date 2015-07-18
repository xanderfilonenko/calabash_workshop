require 'calabash-android/abase'
# This is page class for Start page
class WorkoutsPage < BasePage

# LOCATORS
def buttons
	{
		"new workout" => "* id:'menu_add_workout'"

	}
end

def dropdowns
	{
		"workouts filter" => "* id:''"
	}
end

def tap_on_log_in
	tap_on("log in button")
end

def await
	element_should_be_present("log in button")
	self
end