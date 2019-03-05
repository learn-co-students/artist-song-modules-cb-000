class Artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@all = []

  #how to abstract initialize across classes,
  #but maintain the additional code in special classes
  #here we just call super.  This executes the initialize
  #module in Memorable::InstanceMethods, then returns
  #to execute @songs = []
  def initialize
    #@@all << self
    super
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end