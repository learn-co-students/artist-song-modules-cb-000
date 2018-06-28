require 'pry'

require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable.rb'
require_relative '../lib/concerns/findable.rb'




class Artist
  extend Findable, Memorable::ClassMethods
 include Memorable::InstanceMethods, Paramable
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def initialize
    @@artists << self
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
