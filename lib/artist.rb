require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'
require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable



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
