require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'
class Song
  extend Memorable::ClassMethtods
  include Memorable::InstanceMethods
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

#  def to_param
#    name.downcase.gsub(' ', '-')
#  end

  def self.all
    @@songs
  end
end
