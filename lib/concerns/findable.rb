module Findable
  def find_by_name
    self.detect{|a| a.name == name}
  end
end 