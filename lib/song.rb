require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable


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
