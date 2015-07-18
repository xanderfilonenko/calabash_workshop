# -*- encoding : utf-8 -*-
require 'calabash-android/abase'

# This is Parent class for all classes where we have everywhere usefull functions
class HelpPage < BasePage

  def fields 
    {
      
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
      "Go to App button" => "Button id:'inapptour_skip'"
    }
  end

  def await
    element_should_be_present("Go to App button")
    self
  end
