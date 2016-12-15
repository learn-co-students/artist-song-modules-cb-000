require 'pry'

class Artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods



  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    #have to call super to call memorable :: InstanceMethods before this childs code is ran
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

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

end
