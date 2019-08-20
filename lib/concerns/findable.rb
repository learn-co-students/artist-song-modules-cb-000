module Findable

  def find_by_name(name)
    ObjectSpace.each_object(self).to_a.detect{|a| a.name == name}
  end
end
