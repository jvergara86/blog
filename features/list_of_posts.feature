Feature: List of Posts
  
  As a reader
  I want to read posts from my favorite blogger
  So that I can learn something.
  
  Scenario: Showing newly added posts
    Given I am on the new post page
    When an author publishes a posts
    Then the newly published post is added to the new post page
	And the new post page refreshes

  Scenario: Formatting each post
    Given I am on the new post page
    When a published post is available
	Then the post will have a title, published date, and author name
	And each post shows the first 250 characters of the post

  Scenario: Showing available posts
    Given I am on the new post page
	When the new post page loads or refreshes
	Then the new post page shows the last ten posts from the author
    And each post is ordered by its published date

  Scenario: Accessing the new post page from the home page
    Given I am on the home page
    When the new post page link is used
    Then the new post page is opened
