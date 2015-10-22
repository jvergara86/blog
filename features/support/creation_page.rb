require 'page-object'

class CreationPage
  include PageObject
  
  page_url "http://localhost:4567/create"
  
  text_field(:title, :id => "post-title")
  text_field(:author, :id => "post-author")
  text_area(:content, :id => "post-body")
  button(:submit, :id => "submit-post")
  button(:home, :id => "home-link")
  
  def create_valid_post
    self.title = "My Blog Title"
	self.author = "The Author's Name"
    self.content = "This is my post's content."
    self.submit
  end
  
  def create_duplicate_posts
    create_valid_post
    goto
    create_valid_post
  end
  
  def go_home
    self.home
  end
  
  def create_new_post
    self.title = "New Post Title"
	self.author = "The Author's Name"
    self.content = "The new post content."
    self.submit
  end
  
  def create_post_with_title_and_author
    self.title = "Post with a Title"
	self.author = "Post with an Author"
    self.content = "Both the title and author should be there."
    self.submit
  end
end