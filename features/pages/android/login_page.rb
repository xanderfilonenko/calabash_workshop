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
end
