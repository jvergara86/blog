Feature: Read Entire Post

  As a reader
  I want to read an entire post
  So that I can get all the details

  Scenario: Accessing the newest post from the home page
    Given I am on the home page
    When the newest post link is used
	Then the new post page is opened showing the newest post

  Scenario: Showing entire post
    Given I am on the new post page
    When a post is opened
    Then the title, published date, author name, and entire post will be shown

  Scenario: Accessing the home page from the new post page
    Given I am on the new post page
    When the home page link is used
    Then the home page is opened