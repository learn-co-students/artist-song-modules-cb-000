module Memorable
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initialize
      # same as Song.all << self or Artist.all << self
      self.class.all << self
    end
  end
end

=begin
  Notes:
  - 'self' keyword is omitted when defining class methods inside modules
  - use 'def count' instead of 'def self.count'
=end
