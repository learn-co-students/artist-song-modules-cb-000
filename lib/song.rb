require 'pry'

class Song
  include Paramable, Memorable::InstanceMethods
  extend Findable, Memorable::ClassMethods
  attr_accessor :name
  attr_reader :artist

  @@all = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end
end
