require 'calabash-android/calabash_steps'

Then(/^(.*) should have (.*) text/) do |element, text|
  @current_page.element_should_have_text(element, text)
end

