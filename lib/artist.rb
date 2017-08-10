require 'pry'

class Artist
  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize
    super
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end


end
