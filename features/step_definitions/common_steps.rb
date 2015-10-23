Given /^I am on the post submission page$/ do
 
  #Open browser and goto the creation page
  
  @page = CreationPage.new @browser
  @page.goto
end

Given /^I am on the home page$/ do
 
  #Open browser and goto the creation page
  
  @page = HomePage.new @browser
  @page.goto
end

Given /^I am on the entire post page$/ do
 
  #Open browser and goto the creation page
  
  @page = EntirePostPage.new @browser
  @page.goto
end