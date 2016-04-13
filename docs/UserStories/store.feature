Feature: Promote a sale
        |As a store manager
        |I want to add sale information on the application
        |so that costumers are aware of sales that stores are promoting
        


Scenario: Store advertises weekly sales on the application
        |Given  I'm on the sale registration page 
        |When   I fill in a name of product, sale value
        |And    Specifies how long the sale will last
        |Then   Sale information is added to the sale page
        |And    My sale is visible for users