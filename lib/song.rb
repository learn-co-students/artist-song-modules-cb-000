require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Findable::InstanceMethods
  extend Findable::ClassMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end



  def artist=(artist)
    @artist = artist
  end


  def self.all
    @@songs
  end
end
