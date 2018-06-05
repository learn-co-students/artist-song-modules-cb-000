require 'pry'

class Song
  extend Memorable::ClassMethods, Findable
  include Paramable, Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
