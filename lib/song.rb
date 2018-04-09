require 'pry'

class Song
  include Paramable, Memorable::InstanceMethods
  extend Findable, Memorable::ClassMethods
  attr_accessor :name
  attr_reader :artist

  @@song = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@song
  end
end
