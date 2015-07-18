# -*- encoding : utf-8 -*-
require 'calabash-android/abase'

# This is Parent class for all classes where we have everywhere usefull functions
class BasePage < Calabash::ABase

# LOCATORS

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

    }

# METHODS

  # accepting text which you entered in input field
  def accept_entered_text
    
  end

  # execute double tap on element
  def double_tap_on(key)

  end

  # check that element has text
  def element_should_have_text(key, text)
    if get_element_text(key) == text then true
    else raise 'Element ' + key.to_s + ' does not have text ' + text
    end
  end

  # wait for element present on page
  def element_should_be_present(key)

  end

  # wait for element does not present on page
  def element_should_not_be_present(key)

  end

  # get value of class attribute
  def get_class_attribute(key)
    attributes.has_key?(key) ? attributes[key] : (raise 'Class ' + self.class.to_s + ' does not consist attribute: ' + key.to_s + '. This class locates in features/ios/pages')
  end

  # get element locator from page, on which we are locating now
  def get_element_locator(key)
    # check which hash has key and return it.
    # If hash doesn't have key => we raise the exception
    if    fields.has_key?(key)    then fields[key]
    elsif dropdowns.has_key?(key) then dropdowns[key]
    elsif links.has_key?(key)     then links[key]
    elsif buttons.has_key?(key)   then buttons[key]
    else  raise 'Class ' + self.class.to_s + ' does not consist element: ' + key.to_s + '. This class locates in features/ios/webpage or pages/' + self.class.to_s.downcase + '.rb'
    end 
  end

  # get element text on web page
  def get_element_text(key)
    if query(get_element_locator(key)])[0].has_key?("text")
      query(get_element_locator(key)], "text")[0]
    elsif query(get_element_locator(key)])[0].has_key?("textContent")
      query(get_element_locator(key)], "textContent")[0]
    else
      nil
    end
  end

  # check element present on the page or not. Return true or false
  def has_element?(key)

  end

  # write text in field using keyboard 
  def fill_in_input(key, text)

  end

  # write text in several fields using keyboard 
  def fill_in_inputs(options, default_options={})

  end

  # write text in field without using keyboard
  def fill_in_input_without_keyboard(key, text)

  end

  # get element from page
  def find(key)

  end

  # execute long tap on element
  def long_tap_on(key)

  end

  # select option from dropdown
  def select(element, option)

  end

  # execute taping on element
  def tap_on(key)

  end

end
