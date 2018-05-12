require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Findable
  include Paramable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
