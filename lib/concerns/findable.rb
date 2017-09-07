module Findable
    def find_by_name(name) 
      self.all.detect{|object| object.name == name}
    end
end
  
