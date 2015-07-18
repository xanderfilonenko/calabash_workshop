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
		"workouts filter" => "* id:'filter_selector'"
		"Treadmill workouts option" => "* text:'Treadmill workouts'"
		"Non Tread Cardio option" => "* text:'Non Tread Cardio'"
		"Manually added option" => "* text:'Manually added'"
		"Tracking App option" => "* text:'Tracking App'"
		"Traking Device option" => "* text:'Tracking Device'"
	}
end

def list
	{
		"Workout item " => "* text:'#{@temp_var}' parent * id:'main_item'"
	}
end


def await
	element_should_be_present("")
	self
end

def long_tab_workout_list_item(workout_date)
	@temp_var = workout_date
	long_tap_on("Workout item")
end

def get_workout_info(workout_date,info)
	
end

end