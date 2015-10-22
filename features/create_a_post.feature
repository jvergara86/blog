Feature: Creating A Post
  As an author
  I want to create a post
  So that I can share my work with the world

  Scenario: Creating a valid post
    Given I am on the post submission page
	When I create a valid post
	Then my post is created
  
  Scenario: Adding duplicate posts
    Given I am on the post submission page
	When I create a duplicate post
	Then I get an error

  Scenario: Accessing home page from the submission page
    Given I am on the post submission page
	When I click the home page button
	Then I am directed to the home page