require 'watir-webdriver'
require 'page-object'
require 'MyPostPage'
require 'HomePage'
require 'NewPostPage'
require 'SearchResultsPage'

#Scenario: Deleting a post
Given /^I am on my posts page$/ do
  pending "WIP"
  #Open browser and my post page
end

When /^I open a post I have published$/ do
  pending "WIP"
  #Click on a post title to show the entire post
end

Then /^a delete this post option should be shown$/ do
  pending "WIP"
  #The delete_post_button will become available for the selected post
end

#Scenario: Confirming the deletion
Given /^I have opened a post I have published$/ do
  pending "WIP"
  #An entire post is shown
end

When /^delete this post is used$/ do
  pending "WIP"
  #The delete_post_button is clicked
end

Then /^show a message asking if I am sure I want to delete this post$/ do
  pending "WIP"
  #Display a deletion confirmation message to the user 
end

#Scenario: Deletion confirmed
Given /^the deletion confirmation message is displayed$/ do
  pending "WIP"
  #The deletion confirmation message is displayed to the user
end

When /^I confirm the deletion of this post$/ do
  pending "WIP"
  #The yes button of the deletion confirmation message is selected
end

Then /^delete this post$/ do
  pending "WIP"
  #The currently selected post is removed/deleted from the website
  #Return to my post page
end

#Scenario: Deletion denied
#Using a repeated Given statement
When /^I deny the deletion of this post$/ do
  pending "WIP"
  #The no button of the deletion confirmation message is selected
end

Then /^do not delete this post$/ do
  pending "WIP"
  #Do not delete the currently selected post
  #Close deletion confirmation message
end

#Scenario: Deleting posts off the home page
Given /^I am on the home page$/ do
  pending "WIP"
  #Open browser and home page
end

When /^the new post page is shown$/ do
  pending "WIP"
  #The new post page link is displayed
end

Then /^deleted posts are not displayed$/ do
  pending "WIP"
  #Deleted posts should not be shown
end

#Scenario: Deleting posts off the search results
Given /^a search has been performed$/ do
  pending "WIP"
  #Open the home page
  #Text has been entered in the search_field
  #A search has been preformed
end

When /^the search results are displayed$/ do
  pending "WIP"
  #The search results page is displayed
end

Then /^deleted posts are not displayed in the search results$/ do
  pending "WIP"
  #Deleted posts should not be shown
end


