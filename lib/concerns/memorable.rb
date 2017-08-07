# Memorable module
module Memorable
  # Class Methods
  module ClassMethods
    def reset_all
      all.clear
    end

    def count
      all.count
    end
  end

  # Instance Methods
  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end
