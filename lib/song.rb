require 'pry'

class Song

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramble::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
