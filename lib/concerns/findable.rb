
module Findable

  def find_by_name(name)
    self.all.detect do |a|
      a.name == name
    end
  end
end
