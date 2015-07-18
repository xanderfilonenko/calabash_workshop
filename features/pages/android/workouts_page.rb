require 'calabash-android/abase'
# This is page class for Start page
class WorkoutsPage < BasePage

# LOCATORS
def buttons
	{
		"new workout" => "* id:'menu_add_workout'",
		"workout tab" => "* id:'radio_#{@temp_var}'",
		"back button" => "* id:'home'"
	}
end

def dropdowns
	{
		"workouts filter" => "* id:''"
	}
end



#METHODS
def tap_on_log_in
	tap_on("log in button")
end

def await
	element_should_be_present("log in button")
	self
end

def tap_on_tab (tab_name)
  @temp_var = tab_name
  tap_on("workout tab")
end

end
