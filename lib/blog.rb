require "sinatra"
require "slim"

get '/create' do
  slim <<-VIEW
doctype html
html 
  head
    title My Blog - Create
  body
    form action='create/post' method='POST'
      input type='text' id='post-title' name = 'title'
	  input type='text' id='post-author' name = 'author'
	  textarea id='post-body' name = 'content'
	  button type='submit' id='submit-post' Submit
	  input type='button' id='home-link' value="Home Page" onclick="window.location.href='http://localhost:4567/home'"

VIEW
end

get '/home' do
  slim <<-VIEW
doctype html
html
  head
    title Home Page
  body
    h1 My Articles
	- if $blog_posts.nil?
	    div
		  |  No Articles Were Posted.
		p  
	- else	  
	  - $blog_posts.each_with_index do |post, i|
	      div
		    dl 
		      dt Title
			  <dd>
			  <a id=i href="/entire_post/0">
			  = post['title']
			  </a>
		      </dd>
		      dt Author
		      dd = post['author']
	input type="button" id='create-link' value="Create a New Post" onclick="window.location.href='http://localhost:4567/create'"
VIEW
end

get '/entire_post/0' do
  slim <<-VIEW
doctype html
html
  head
    title Entire Post
  body
	  - $blog_posts.each_with_index do |post, i|
	      div id='entire-title'
            = post['title']
          div id='entire-author'
		    = post['author']
		  div id='entire-body'
			= post['body']
	  input type='button' id='home-link' value="Home Page" onclick="window.location.href='http://localhost:4567/home'"
VIEW
end

post '/create/post' do
  $blog_posts ||= [] #The "||" if there is no array, then it creates an empty array. After that it will see the array and use it instead of making a new array.
  if $blog_posts.any?{ |hash| hash["title"] == params[:title] }
    "Error! No duplicate titles!"
  else
    $blog_posts.push({ "title" => params[:title], "body" => params[:content], "author" => params[:author]})
	slim <<-VIEW
doctype html
html
  body
    input type='button' id='home-link' value="Home Page" onclick="window.location.href='http://localhost:4567/home'"
    div 
      | Submitted!
VIEW
  end
end
