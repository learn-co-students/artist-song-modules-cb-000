module Memorable
  @@items = []
  def all
    @@items
  end

  def reset_all
    self.all.clear
  end
end
