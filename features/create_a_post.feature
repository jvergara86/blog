Feature: Create A Post
  As an author
  I want to create a post
  So that I can share my knowledge with the world

  Scenario: Creating a valid post
    Given I am on the post submission page
	When I create a valid post
	Then my post is created
  
  Scenario: Creating an invalid post
    Given I am on the post submission page
    When I create a invalid post
    Then my post is not created
  
  Scenario: Accessing the home page
    Given I am on the post submission page
	When the home page link is used
	Then the home page is opened