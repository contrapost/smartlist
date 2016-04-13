Feature: Grocery list
        As a user
        I want to add groceries and their prices to a list
        So that I have a overview of the lowest prices for groceries
    
    
    
Scenario: User adds groceries to the grocery list
        Given 	I'm logged in
        When 	I'm on the shopping list page 
        And 	Choose product, quantity
        And 	(Optionary) write down/change the price, store name
        And 	Press "add product" button
        Then 	I repeat the operation until I'm done
        And 	The grocery list is complete, can be changed, archived, sent by email