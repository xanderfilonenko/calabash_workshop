require 'calabash-android/abase'

#This is class for Login page

class LoginPage < BasePage

# LOCATORS

  def fields 
    {
      "xID field" => "* id:'et_user_xid'",
      "passcode field" => "* id:'et_user_passcode'"
    }
  end

  def buttons
    {
      "sign in button" => "button id:'bt_sign_in'"
    }
  end
  
# METHODS

  def sign_in_as(user)
    fill_in_input("xID field", "002200")
    fill_in_input("passcode field", "1212")
    tap_on("sign in button")
  end

  def await
    element_should_be_present("xID field")
    self
  end
end
