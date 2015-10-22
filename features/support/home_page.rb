require 'page-object'

class HomePage
  include PageObject
  
  page_url "http://localhost:4567/home"
  

  button(:create_new_post, :id => "create-link")


  
end