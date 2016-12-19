# require 'pry'
# require_relative '../config/environment'

require_relative '../lib/artist'
require_relative '../lib/song'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'

class Artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def self.all
    @@artists
  end

  def initialize
    super
    @songs = []
  end
  # use 'super' to call the parent initialize method first

  def add_song(song)
    @songs << song
    song.artist = self unless song.artist
  end

  def add_songs(songs)
    songs.each do |x|
      add_song(x)
    end
  end

end
