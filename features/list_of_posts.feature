Feature: List Of Posts
  
  As a reader
  I want to read posts from my favorite blogger
  So that I can learn something.
  
  Scenario: Showing newly added posts
    Given I am on the post submission page
	When an author publishes a new post
	Then the newly published post is shown on the home page
	
  Scenario: Post has a title and author
    Given I am on the home page
	When a post is created
	Then the post will show the title and author name
	