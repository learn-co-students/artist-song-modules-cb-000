class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  prepend Memorable::InstanceMethods
  include Paramable::InstanceMethods

  @@artists = []
  
  def self.all
    @@artists
  end

  def initialize
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self unless song.artist
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
