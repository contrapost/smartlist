Feature: Create a budget
        As a user
        I want to make a budget of my expenses
        so that I can keep track of my spendings and savings
        


Scenario: User creates a plan for organizing expenses and savings
        Given   User checks expenses and statistic details for a period of time
        When    User estimates how much money it has been spent
        And     Compares the total amount of spent money to the limit of expenses that has been set
        Then    Adds the gathered information 
        And     The budget has been added to the profile
    
