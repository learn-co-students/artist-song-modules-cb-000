require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'
class Artist
  extend Memorable::ClassMethtods
  extend Memorable::InstanceMethods
  include Paramable
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def initialize
    self.class.all << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

#  def to_param
#    name.downcase.gsub(' ', '-')
#  end

end
