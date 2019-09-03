require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  include Paramable
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
