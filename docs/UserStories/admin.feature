Feature: Maintain the application
        As a adminstrator
        I want to solve issues that occur and answer requests from users
        So that users can get a full advantage of the application



Scenario: Admin receives requests from stores and users
        Given   I recieve a request from user/store
        When    I have access to application
        And     Finds a posssible solution
        Then    Solves the problem/request
        And     The user/store gets an email confirming that the issue has been solved