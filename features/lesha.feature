Feature: Skip tour on Help page and open Home page

	Scenario: Skip tour on Help page
	Given I open Start page
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