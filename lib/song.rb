require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
  extend Findable


  @@songs = []


  def artist=(artist)
    @artist = artist
  end



  def self.all
    @@songs
  end
end
