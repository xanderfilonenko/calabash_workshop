Feature: Login feature

  Scenario: As a valid user I can log into my app
    When I enter my xID
    And I enter my passcode
    And I tap "Sign In"
    Then I see ""
