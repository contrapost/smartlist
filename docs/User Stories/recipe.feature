Feature: Write a recipe
        As a user
        I want to write recipes 
        So that I can easily know which ingredients to buy for a choosen dish 
    
   
    
Scenario: User writes down groceries needed for a dish
        Given   User looks up different groceries from a shopping list
        When    User chooses the right ingredients for a dish
        And     Adds them to a recipe
        Then    User saves the recipe
        And     The recipe is added to user's profile