require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  extend Findable
  include Paramable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  @@artists = []

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  # def self.reset_all
  #   self.all.clear
  # end
  #
  # def self.count
  #   @@artists.count
  # end

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
