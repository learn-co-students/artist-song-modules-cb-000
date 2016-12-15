module Memorable

  module ClassMethods
    #can't use the @@all here, have to use self.<var> for variable naming
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initialize
      #self.class = Artist . all = calls self.all class method
      self.class.all << self
    end
  end
end
