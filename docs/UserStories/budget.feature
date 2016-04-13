Feature: Create a budget
        As a user
        I want to make a budget of my expenses
        so that I can keep track of my spendings and savings
        


Scenario: User creates a plan for organizing expenses and savings
        Given   I'm signed in the application and is on the budget page
        When    I choose a concrete period of time, limit of expenses 
        And 	Other necessary criteria
        And     The app generates statistics 
        And 	Compares the total amount of spent money to the limit
        Then    Adds the gathered information 
        And     The budget has been added to the profile
    
