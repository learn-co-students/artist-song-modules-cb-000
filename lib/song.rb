# Song class
class Song
  extend Memorable
  extend Findable
  include Paramble

  attr_accessor :name, :artist

  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.all
    @@songs
  end
end
