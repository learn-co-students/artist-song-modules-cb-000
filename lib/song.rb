class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@all = []

  #def initialize
  #  @@all << self
  #end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

end