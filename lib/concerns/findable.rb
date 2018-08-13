module Findable
  def find_by_name(name)
    all.detect.detect{|a| a.name == name}
  end
end
