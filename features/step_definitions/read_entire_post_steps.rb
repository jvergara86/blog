require 'watir-webdriver'
require 'page-object'
require 'HomePage'
require 'NewPostPage'


#Scenario: Accessing the newest post from the home page
Given /^I am on the home page$/ do
  pending "WIP"
  #Open browser and home page
end

When /^the newest post link is used$/ do
  pending "WIP"
  #Click the newest_post_title_button
end

Then /^the new post page is opened showing the newest post$/ do
  #browser.goto "the current newest post page URL"
end

#Scenario: Showing entire post
Given /^I am on the new post page$/ do
  pending "WIP"
  #Open browser and new post page
end

When /^a post is opened$/ do
  pending "WIP"
  #Click post title
end

Then /^the title, published date, author name, and entire post will be shown$/ do
  pending "WIP"
  #browser.goto "selected post URL"
end

#Scenario: Accessing home page from new 
#Using a repeated Given statement
When /^the home page link is used$/ do
  pending "WIP"
  #Click the home_page_button
end

Then /^the home page is opened$/ do
  pending "WIP"
  #browser.goto "home page URL"
end