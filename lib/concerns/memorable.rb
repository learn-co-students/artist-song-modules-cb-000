module Memorable
  # When declaring a class method in the module you aren't
  # required to put a 'self.' before the method name. This
  # will cause an error.
  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end
end
