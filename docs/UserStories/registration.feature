Feature: Registration
        As an administrator
        I would like to reduce amount of user registration tasks
        and let users of the app to create accounts by themselves
  
  
  
Scenario: New User, register of a new account
        Given 	User enters the application first time
        When    User clicks on register button
        And 	Fills out a registration form
        Then 	User gets a confirmation email
        And 	A new user has been created

Scenario: New User, register with the help of Facebook/Twitter/Google+
        Given 	User enters the application first time
        When    User clicks on register button
        And 	Chooses social media
        And 	And allows to use her profile data 
        Then 	User is authenticated
        And 	Can use the application

Scenario: New User, problems with registration
        Given 	User enters the application first time
        When    Tries to create an acoount
        And 	Don't want to use profile in a social media
        And 	And it's impossible to register email
        Then 	User sends email to the admistrator
        And 	Administrator registers user