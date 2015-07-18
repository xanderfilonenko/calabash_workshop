# -*- encoding : utf-8 -*-
require 'calabash-android/abase'

# This is Parent class for all classes where we have everywhere usefull functions
class NewWorkoutPage < BasePage

  def fields 
    {
      "Timezone field" => "TextView text:'#{@timezone}'"
      "Duration field" => "EditText id:'et_duration'"
      "Distance field" => "EditText id:'et_distance'"
      "Calories field" => "EditText id:'et_calories'"
      "Europe/Kiev" => "TextView text:'Europe/Kiev'"
    }
  end

  def dropdowns
    {
      "Time zone spinner" => "Spinner id:'et_time_zone'"
    }
  end

  def links
    {
      
    }
  end

  def buttons
    {
      "Back button" => "ImageView id:'home'"
      "Record Manually button" => "TextView text:'RECORD MANUALLY'"
      "Cancel" => "TextView text:'CANCEL'"
      "Save" =>  "TextView text:'SAVE'"
    }
  end

  def await
    element_should_be_present("Record Manually button")
    self
  end

  def select_time_zone(timezone)
    tap_on("Time spinner")
    @timezone = timezone
    tap_on(get_element_locator("Timezone field"))
  end

end