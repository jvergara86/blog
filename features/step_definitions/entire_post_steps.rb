#This step is just testing the first blog post.
#All posts after will be tacted to that first post.

#Scenario: Viewing Entire Post
#Using a common Given statement
When /^I click the title of the post$/ do
  #Opens the first posted blog
  @page.go_to_post
end

Then /^the browser opens the entire post page$/ do
  expect(@page.html).to include("My Blog Title")
end

#Scenario: Viewing a Valid Post
#Using a common Given statement
Then /^the entire article author name and title should be visible$/ do
  expect(@page.html).to include("My Blog Title")
  expect(@page.html).to include("The Author's Name")
  expect(@page.html).to include("This is my post's content")
end


#Scenario: Clicking the Home Page Link
#Using a common Given statement
When /^I click the home page button link$/ do
  @browser.button(:id => "home-link").click
end

