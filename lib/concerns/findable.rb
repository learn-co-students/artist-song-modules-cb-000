module Findable
  
  module ClassMethods

    def find_by_name(name)
      self.all.detect do |x|
        x.name
      end
    end

  end

end
# self.all.detect uses the all method to look at @@songs & @@ artists class variables

#   def self.find_by_name(name)
#     @@songs.detect do |a|
#       a.name == name
    # end
#   end

#   def self.find_by_name(name)
#     @@artists.detect{|a| a.name == name}
#   end
