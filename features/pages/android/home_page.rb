# -*- encoding : utf-8 -*-
require 'calabash-android/abase'

# This is Parent class for all classes where we have everywhere usefull functions
class HomePage < BasePage

# LOCATORS

  def fields 
    {
     "Workout quantity Field" => "* id:'stat' index:2"
    }
  end

  def dropdowns
    {
      
    }
  end

  def links
    {
      
    }
  end

  def buttons
    {
      "Record a Workout button" => "* text:'Record a Workout'",
      "Workout button" => "* text:'Workouts'"
    }
  end

  def await
    # element_should_be_present("Workout quantity Field")
    self
  end

end
