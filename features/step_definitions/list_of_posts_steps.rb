
#Scenario: Showing newly added posts
#Given statement is in common_steps.rb
When /^an author publishes a new post/ do
  @page.create_new_post
end

Then /^the newly published post is shown on the home page$/ do
  @page = HomePage.new @browser
  @page.goto
  
  expect(@page.html).to include("New Post Title")
end


#Scenario: Post has a title and author
#Given statement is in common_steps.rb
When /^a post is created$/ do
  @page.create_new_post
  
  @page = CreationPage.new @browser
  @page.create_post_with_title_and_author
  @page.home
end

Then /^the post will show the title and author name$/ do
  expect(@page.html).to include("Post with a Title")
  expect(@page.html).to include("Post with an Author") 
end


#Scenario: Accessing new post page
#Given statement is in common_steps.rb
When /^I click the new post button$/ do
  @page.go_create_page
end

Then /^the new post page is displayed$/ do
  @page = CreationPage.new @browser
  expect(@page.home_element.text).to eq "Home Page"
end