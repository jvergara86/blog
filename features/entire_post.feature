Feature: View Entire Post

  As a reader
  I want to read an entire post
  So that I can get all the details
  
  Scenario: Viewing Entire Post
  Given I am on the home page
  When I click the title of the post
  Then the browser opens the entire post page
  
  Scenario: Viewing a Valid Post
  Given I am on the entire post page
  Then the entire article author name and title should be visible
  
  Scenario: Clicking the Home Page Link
  Given I am on the entire post page
  When I click the home page button link
  Then I am directed to the home page