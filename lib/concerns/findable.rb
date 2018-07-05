module Findable
  def find_by_name(name)
    self.all.detect do |artist|
      artist.name == name
    end
  end
end