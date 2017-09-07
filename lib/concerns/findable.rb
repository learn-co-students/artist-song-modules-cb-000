module Findable

  def find_by_name(name)
    self.all.detect { |x| x.name == name}
  end

end
