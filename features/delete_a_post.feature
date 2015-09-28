Feature: Delete a Post

  As an author
  I want to delete posts
  So that I can hide my stupidity

  Scenario: Deleting a post
    Given I am on my posts page
    When I open a post I have published
    Then a delete this post option should be shown
  
  Scenario: Confirming a post deletion
    Given I have opened a post I have published
	When delete this post is used
	Then show a message asking if I am sure I want to delete this post

  Scenario: Deletion confirmed
    Given the deletion confirmation message is displayed
    When I confirm the deletion of this post
    Then delete this post

  Scenario: Deletion denied
    Given the deletion confirmation message is displayed
    When I deny the deletion of this post
    Then do not delete this post

  Scenario: Deleting posts from home page
    Given I am on the home page
    When the new post page is shown
    Then deleted posts are not displayed

  Scenario: Deleting posts from search results
    Given a search has been performed
    When the search results are displayed
    Then deleted posts are not displayed in the search results	