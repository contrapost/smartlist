Feature: Maintain the application
        As a adminstrator
        I want to solve issues that occur and answer requests from users
        So that users can get a full advantage of the application



Scenario: Admin receives requests from users
        Given   User sends a request to the admin
        When    Adminstrator responds to the request
        And     Finds a posssible solution
        Then    Solves the problem/request
        And     The user gets an email confirming that the issue has been solved