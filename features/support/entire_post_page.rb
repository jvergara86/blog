require 'page-object'

class EntirePostPage
  include PageObject
  
  page_url "http://localhost:4567/entire_post/0"

  link(:homepage, :id => "homelink")
end