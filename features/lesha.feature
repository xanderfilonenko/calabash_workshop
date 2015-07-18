Feature: Skip tour on Help page and open Home page

 	Scenario: Without registration
	Given I open Start page
<<<<<<< HEAD
	When I tap on log in button
	Then Login page is loaded
	When I fill in xID field with 002200
    And I fill in passcode field with 1212
    And I tap on sign in button
    Then Help page is loaded
    When I tap on Go to App button
    Then Home page is loaded
    When I tap on Workout button
    Then Worckout page is loaded
=======
	And I should be sign in
    And I tap on Workout button

>>>>>>> 743677b555e4a813f10f6b2d8988302c4566b60e
