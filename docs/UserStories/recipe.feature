Feature: Use recipe feature
        As a user
        I want to use recipe feature of the application 
        So that I can easily know which ingredients to buy for a choosen dish 
    
   
    
Scenario: User makes a new recipe
        Given   I'm on a recipe page 
        When    I add all necessary ingredients for a dish to a list
        And     Write down the recipe name
        Then    Push the "Save recipe" button
        And     The recipe is added to my recipe list

Scenario: User choose a recipe to add to a shopping list
        Given   I'm on a recipe page 
        When    I choose a recipe of a dish I want to make today
        And     Press the "add to shopping list" button
        Then    Recipe is choosen 
        And     All necessary ingredients are added to my shopping list