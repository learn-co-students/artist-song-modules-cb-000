module Findable
  module ClassMethods
    #in the find_by_name method, we had to remove the self reference and replace the 
    #@@artist and @@song with a non-class specific reference to all instances of those 
    #classes which is simply all 

    def find_by_name(name)
      all.detect{|a| a.name == name}
    end

  end
end 