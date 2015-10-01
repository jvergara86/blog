Feature: Search

  As a reader
  I want to search for posts by title
  So that I can find specific information

  Scenario: Searching from the home page
    Given I am on the home page
    When I enter text into the search box
	Then the search results page is opened

  Scenario: Search is performed
    Given I have entered text into the search box
    When the text matches any part of a title
	Then the search is performed

  Scenario: Formatting search results
    Given a search has been performed
    When search results are displayed
	Then the result posts will have a title, published date, and author name
	And each result post shows the first 250 characters of the post

  Scenario: Sorting search results
    Given a search has been performed
    When search results are displayed
    Then the search results will be ordered by their published date
	And the search results will show only ten posts at a time

  Scenario: Selecting a post
    Given the search results are displayed
    When I use a title link of a post
    Then the entire post is shown

  Scenario: No search results displayed
    Given a search has been performed
    When no search results are found
    Then display a friendly message apologizing for not finding any posts
