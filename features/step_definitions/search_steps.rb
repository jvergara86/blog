require 'watir-webdriver'
require 'page-object'
require 'SearchResultsPage'
require 'HomePage'

#Scenario: Searching from the home page
Given /^I am on the home page$/ do
  pending "WIP"
  #Open browser and home page
end

When /^I enter text into the search box$/ do
  pending "WIP"
  #Text has been entered in the search_field
end

Then /^the search results page is opened$/ do
  pending "WIP"
  #Open the search results page
end

#Scenario: Search is performed
Given /^I have entered text into the search box$/ do
  pending "WIP"
  #Text has been entered in the search_field
end

When /^the text matches any part of a title$/ do
  pending "WIP"
  #search_field.text matches part of any title
end

Then /^the search is performed$/ do
  pending "WIP"
  #Open the search results page
end

#Scenario: Formatting search results
Given /^a search has been performed$/ do
  pending "WIP"
  #Open search results page
end

When /^search results are displayed$/ do
  pending "WIP"
  #search_results_counter > 0
end

Then /^the result posts will have a title, published date, and author name$/ do
  pending "WIP"
  #Show @search_result_title, @search_result_published_date, and @search_result_author_name in (alignment top)
end

And /^each result post shows the first 250 characters of the post$/ do
  pending "WIP"
  #Show @search_result_post.length(250) underneath @search_result_title, @search_result_published_date, and @search_result_author_name
end

#Scenario: Sorting search results
#Using repeated Given statement and When statement
Then /^the search results will be ordered by their published date$/ do
  pending "WIP"
  #Order the search results by published date with the newest being first
  #- @search_result_post[9].show.order(search_result_published_date) -
end

And /^the search results will show only ten posts at a time$/ do
  pending "WIP"
  #Show only 10 search results at at time
  #- @search_result_post[9].show -
end


#Scenario: Selecting a post
Given /^the search results are displayed$/ do
  pending "WIP"
  #Open search results page
  #@search_results_counter > 0
end

When /^I use a title link of a post$/ do
  pending "WIP"
  #Click post title
end

Then /^the entire post is shown$/ do
  pending "WIP"
  #browser.goto "selected post URL"
end


#Scenario: No search results displayed
#Using repeated Given statement
When /^no search results are found$/ do
  pending "WIP"
  #@search_results_counter <= 0
end

Then /^display a friendly message apologizing for not finding any posts$/ do
  pending "WIP"
  #Display a message saying "Sorry, no titles matching your search entry were found."
end