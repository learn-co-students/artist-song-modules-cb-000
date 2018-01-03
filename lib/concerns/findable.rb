module Findable

  def find_by_name(name)
    self.all.detect {|e| e.name == name}
  end

end
