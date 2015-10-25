require 'watir-webdriver'
#Scenario: Creating a valid post
#Given statement is in common_steps.rb
When /^I create a valid post$/ do
 
  #Fill in title
  #Fill in body
  #Click the submit button
  
  @page.create_valid_post
end

Then /^my post is created$/ do
  
  #@variable includes the post
  
  expect(@page.html).to include("Submitted!")
end

#Scenario: Adding duplicate posts
#Given statement is in common_steps.rb
When /^I create a duplicate post$/ do
  @page.create_duplicate_posts
  sleep 1
end

Then /^I get an error$/ do
  expect(@page.html).to include("Error!")
end

#Scenario: Accessing home page from the submission page
#Given statement is in common_steps.rb
When /^I click the home page button$/ do
  @page.go_home
end

Then /^I am directed to the home page$/ do
  expect(@page.html).to include("Home Page")
end