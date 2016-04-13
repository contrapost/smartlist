Feature: Promote a sale
        As a store manager
        I want to add sale information on the application
        so that costumers are aware of sales that stores are promoting
        


Scenario: Store advertises weekly sales on the application
        Given   Store manager logs into the application 
        When    Store manager sends a request about a sale to the admin
        And     Specifies how long the sale will last
        Then    Sale information is added to the store's profile by admin
        And     All sales are visible for users