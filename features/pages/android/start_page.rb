require 'calabash-android/abase'
# This is page class for Start page
class StartPage < BasePage

	# LOCATORS
	def buttons
		{
			"log in button" => "* id:'start_sign_in_button'"
		}
	end

	def tap_on_log_in
		tap_on("log in button")
	end

	def await
		# element_should_be_present("log in button")
		self
	end

end