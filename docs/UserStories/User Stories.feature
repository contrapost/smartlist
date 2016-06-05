USER STORIES

Scenario: User logs in to the application using social media account
  Given I've navigated to the correct web site
  When I go to the sign in page
  And I click either the Facebook button, the Twitter button or the Gooogle+ button
  Then I should be prompted for my log in credentials of the selected social media
  And when I've authenticated on the selected social media site I should be logged in to the application

Scenario: User writes a shopping list
  Given I've correctly logged into the application
  When I click the "smart list" icon on the dashboard
  Then I should be able to write and edit my own personal shopping list

Scenario: Admin logs into the application
  Given I've navigated to the correct web site
  When I go to the sign in page
  And I type in correct username and password
  Then I should be loggen into the application as an administrator

Scenario: User creates a recipe
  Given I've correctly logged into the application
  When I click the "recipe" button on the dashboard
  Then I should get a list of my recipes and an option to make a new one
  And when I've chosen to make a new one I should just enter the ingredients and the recipe is created

Scenario: User checks his budget
  Given I've correctly logged into the application
  When I click the "budget" button on the dashboard
  Then it should be displayed statistics of how much money I've spent on stuff based on what I've previously added to the shopping list

Scenario: User saves his favourite stores
  Given I've correctly logged into the application
  When I click the "favourite stores" button on the dashboard
  Then it should be displayed a map of stores close by
  And I then get the options to choose my favourite stores and save them in a list

Scenario: User checks application for any good deals in his area
  Given I've correctly logged into the application
  When I click the "sales" button on the dashboard
  Then it should be displayed a list of items that is on sale
  And I should then be able to see which stores got the given item on sale



