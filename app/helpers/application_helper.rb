# In a Ruby on Rails application, the ApplicationHelper module is a special module that provides helper methods that can be used in any view across the entire application. It's a place to put methods that don't fit into a specific controller or model, but are useful for rendering views.
module ApplicationHelper
  # This code snippet is defining a module named ApplicationHelper in Ruby. The module is including the Pagy::Frontend module, which means that the methods and functionality defined in Pagy::Frontend will be available within the ApplicationHelper module. This is a common pattern in Ruby on Rails applications to provide helper methods for views.
  include Pagy::Frontend
end
