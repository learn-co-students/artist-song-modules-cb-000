module Memorable
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initialize
      # same as Song.all << self or Artist.all << self
      self.class.all << self
    end
  end
end

=begin
  Notes:
  - 'self' keyword is omitted when defining class methods inside modules
  - use 'def count' instead of 'def self.count'

  - The super keyword, placed inside a method, will tell that method to look up its behavior in the method of the same name that lives in the parent, or super, class.
  - A method that includes the super keyword will execute any code placed inside the super class' method of the same name, and then execute any code inside the child class' method.

  - When we include a module in a class, we are really telling that class to inherit methods from that module
  - So, we can use the 'super' keyword to tell our Artist's .initialize method to use the code in the Memorable::InstanceMethods module's .initialize method and also to use any additional code in the Artist's .initialize method
=end
