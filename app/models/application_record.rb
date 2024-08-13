# class ApplicationRecord < ActiveRecord::Base: This line defines a new class named ApplicationRecord that inherits from ActiveRecord::Base, which is the base class for all Active Record models in a Rails application.

class ApplicationRecord < ActiveRecord::Base
  # primary_abstract_class: This method call indicates that ApplicationRecord is an abstract class, meaning it cannot be instantiated directly and is intended to be subclassed by other models. It also sets ApplicationRecord as the primary abstract class for the application, which allows Rails to use it as the default base class for models.
  primary_abstract_class
end
