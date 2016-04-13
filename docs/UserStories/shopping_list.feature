Feature: Grocery list
        As a user
        I want to add groceries and their prices to a list
        So that I have a overview of the lowest prices for groceries
    
    
    
Scenario: User adds groceries to the grocery list
        Given 	User is logged in
        When 	User clicks on Write a grocery list
        And 	Adds groceries and their prices
        Then 	User saves the grocery list
        And 	And the grocery list is sent to user's email