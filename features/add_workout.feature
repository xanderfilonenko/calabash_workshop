Feature: As User I should be able to add workout

Background:Signed in and on Workouts page
	Given I open Start page
	And I should be sign in 
	And I tap on Workout button

Scenario: Add workout
	And I tap on new workout button
	And New Workout page is loaded
	And I fill duration with 13 minutes
	And I fill distance with 5 miles
	And I fill calories with 300
	Then I tap on Save button
	And Workouts Page is loaded
	
	
