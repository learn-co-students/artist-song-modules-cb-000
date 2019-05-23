require 'pry'

class Artist
  include Paramable
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def self.all
    @@artists
  end
  
  extend Memorable

  #def self.reset_all
    #self.all.clear
  #end

  #def self.count
    #self.all.count
  #end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  #to_param
  #name.downcase.gsub(' ', '-')
  #end
end
