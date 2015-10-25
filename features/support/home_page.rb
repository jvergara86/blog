require 'page-object'

class HomePage
  include PageObject
  
  page_url "http://localhost:4567/home"
  

  button(:create_new_post, :id => "create-link")
  link(:blog_post, :id => "i")
  
  def go_create_page
    self.create_new_post
  end
  
  def go_to_post
    self.blog_post
  end
end