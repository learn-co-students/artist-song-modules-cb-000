require 'pry'
require_relative 'concerns/memorable'
require_relative 'concerns/findable'
require_relative 'concerns/paramable'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable
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
