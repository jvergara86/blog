require 'watir-webdriver'
require 'page-object'
require 'SubmissionPage'


#Scenario: Creating a valid post
Given /^I am on the post submission page$/ do
  pending "WIP"
  #Open browser and submission page
end

When /^When I create a valid post$/ do
  pending "WIP"
  #Fill in title
  #Fill in body
  #Click the submit_button
end

Then /^my post is created$/ do
  pending "WIP"
  #@variable includes the post (title and body), date, and author name
  #@variable is saved to page
end


#Scenario: Creating an invalid post
#Using a repeated Given statement
When /^I create a invalid post$/ do
  pending "WIP"
  #Didn't fill in title or body (or both).
  #Click submit
end

Then /^my post is not created$/ do
  pending "WIP"
  #@variable is not created or saved
end

#Scenario: Accessing the home page from the submission page
#Using a repeated Given statement

When /^the home page link is used$/ do
  pending "WIP"
  #Click the home_page_button
end

Then /^the home page is opened$/ do
  pending "WIP"
  #browser.goto "home page URL"
end
