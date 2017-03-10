require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::InstanceMethods
  include Memorable::InstanceMethods
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []


  def artist=(artist)
    @artist = artist
  end

  def self.reset_all
    @@songs.clear
  end

  def self.all
    @@songs
  end
end
