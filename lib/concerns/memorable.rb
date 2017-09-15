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
      self.class.all << self
      puts "*********************************INIT!!!!!"
    end
  end
end



# module Memorable
#   module ClassMethods
#     # def self.reset_all
#     def reset_all
#       self.all.clear
#     end
#
#     # def self.count
#     def count
#       # count = nil
#       # @@artists.nil? ? count = @@songs.count : count = @@artists.count
#       # # || @@songs.count
#       # count
#       self.all.count
#     end
#   end #ClassMethods
#
#
#   module InstanceMethods
#     def initialize
#       # some more code coming soon!
#       self.class.all << self
#       puts "self.class.all:#{self.class.all}::#{self}"
#     end #initialize
#   end #InstanceMethods
# end #module
