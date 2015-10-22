require 'page-object'

class SubmittedPage
  include PageObject
  
  page_url "http://localhost:4567/create/post"
  
  button(:home, :id => "home-link")
  
end