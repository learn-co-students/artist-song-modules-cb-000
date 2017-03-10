require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable::InstanceMethods
  include Memorable::InstanceMethods
  include Paramable
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
  super
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

end
