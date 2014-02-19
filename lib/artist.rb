class Artist
  attr_reader :name, :songs
  @@artists = []

  def initialize
    @@all << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def self.reset_all
    @@artists.clear
  end

  def self.count
    self.all.count
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
