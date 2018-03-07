module Findable
  module ClassMethods
    def find_by_name(name)
      # reference the collection of all of the instances of a class, without specifically referencing class variables that are only defined in certain classes
      self.all.detect{|a| a.name}
    end
  end
end
