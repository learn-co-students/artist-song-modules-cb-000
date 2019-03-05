module Memorable
    module ClassMethods
        def reset_all
            self.all.clear
        end

        def count
            self.all.count
        end
    end 

    #How to reference class var @@all within
    #instance method

    #also, if you have more than just the following
    #in your class, and you want to abstract the
    #initialize method - then you can use super
    #in your class definition, and it will execute
    #the following code first, then execute any
    #code that follows it in your own initialize
    #method
    module InstanceMethods
        def initialize
            self.class.all << self
        end
    end
end