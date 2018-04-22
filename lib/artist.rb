require 'pry'

class Artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  extend Findable
  include Paramable


  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def self.all
    @@artists
  end

  def initialize
    #@@artists << self
    #self.class.all << self
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
