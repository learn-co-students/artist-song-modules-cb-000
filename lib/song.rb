require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    super
  end


  def self.all
    @@all
  end


  def artist=(artist)
    @artist = artist
  end

end
