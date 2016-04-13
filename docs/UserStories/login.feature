Feature: Registration
        As a user
        I would like to log in to my profile
        so that I can be able to see my grocery lists, recipes and bugdet information
  
  
  
Scenario: New User, register
        Given 	User enters the application
        When    User clicks on register button
        And 	Fills out a registration form
        Then 	User gets a confirmation email
        And 	A new user has been created
