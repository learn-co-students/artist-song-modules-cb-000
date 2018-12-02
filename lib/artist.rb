require 'pry'

require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'


class Artist

  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end

  #def self.find_by_name(name)
  #  @@artists.detect{|a| a.name == name}
  #end

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

#  def to_param
#    name.downcase.gsub(' ', '-')
#  end
end
