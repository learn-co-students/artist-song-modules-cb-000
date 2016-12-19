module Memorable

  module InstanceMethods

    def initialize
      self.class.all << self
    end

  end

  module ClassMethods

    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end

  end

end

# module Memorable
#   module ClassMethods
#     def reset_all
#       self.all.clear
#     end
#
#     def count
#       self.all.count
#     end
#   end
#
#   module InstanceMethods
#     def initialize
#       self.class.all << self
#     end
#   end
# end

# If you define the all class variable explicitly through @@all,
# then any class implementing that interface must also define it's
# "all" collection using @@all. If, instead, you use the self.class.all
# implementation, then any class extending the module only needs to implement
# a class method def self.all that will return the correct collection
# representing "all" the instances
# # a class User could define a @@users = [] class variable,
# but then provide access through def self.all that returns @@users
