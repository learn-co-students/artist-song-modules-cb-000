# Song class
class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramble

  attr_accessor :name, :artist

  @@songs = []

  def self.all
    @@songs
  end
end
