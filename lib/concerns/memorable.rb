module Memorable
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end
end

=begin
  Notes:
  - 'self' keyword is omitted when defining class methods inside modules
  - use 'def count' instead of 'def self.count'
=end
