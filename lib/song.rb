require 'pry'

class Song
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

#  def initialize
#    #self.class.all << self
#  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end

end
