require 'watir-webdriver'
require 'page-object'
require 'HomePage'
require 'NewPostPage'


#Scenario: Showing newly added posts
Given /^I am on the new post page$/ do
  pending "WIP"
  #Open browser and new post page
end

When /^an author publishes a posts$/ do
  pending "WIP"
  #Post is submitted by author
end

Then /^the newly published post is added to the new post page$/ do
  pending "WIP"
  #@submitted_post is added to new post page
end

And /^the new post page refreshes$/ do
  pending "WIP"
  #@browser refreshes
end

#Scenario: Formatting each post
#Used a repeating Given statement
When /^a published post is available$/ do
  pending "WIP"
  #post_counter > 0
end

Then /^the post will have a title, published date, and author name$/ do
  pending "WIP"
  #Show @post_title, @post_published_date, and @post_author_name in (alignment top)
end

And /^each post shows the first 250 characters of the post$/ do
  pending "WIP"
  #Show @post.length(250) underneath @post_title, @post_published_date, and @post_author_name
end

#Scenario: Showing available posts
#Used a repeating Given statement
When /^the new post page loads or refreshes$/ do
  pending "WIP"
  #@browser.goto "new post page" or @browser refreshes
end

Then /^the new post page shows the last ten posts from the author$/ do
  pending "WIP"
  #Show the last 10 posts submitted
  #- @post[9].show -
end

And /^each post is ordered by its published date$/ do
  pending "WIP"
  #Order the posts by published date with the newest being first
  #- @post[9].show.order(post_published_date) -
end

#Scenario: Accessing the new post page from the home page
Given /^I am on the home page$/ do
  pending "WIP"
  #Open browser and home page
end

When /^the new post page link is used$/ do
  pending "WIP"
  #Click the new_post_page_button
end

Then /^the new post page is opened$/ do
  pending "WIP"
  #browser.goto "new post page URL"
end