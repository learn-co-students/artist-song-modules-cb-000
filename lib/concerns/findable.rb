module Findable
  module ClassMethods
  def find_by_name(name)
    all.detect{|a| a.name == name}
  end

  def find_by_name(name)
    all.detect{|a| a.name == name}
  end
end
  module InstanceMethods
    def to_param
      name.downcase.gsub(' ', '-')
    end
  end
end
