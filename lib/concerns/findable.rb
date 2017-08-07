module Findable
  module ClassMethods
    # N.B.: class method requires removal of "self." prefix when placed in module!!
    def find_by_name(name)
      self.all.detect{|a| a.name == name}
    end
  end
end
