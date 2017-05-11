require 'pry'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'

class Artist
  attr_accessor :name
  attr_reader :songs
  extend Memorable
  extend Findable
  include Paramable
  # @@artists = []

  # def self.find_by_name(name)
  #   Artist.all.detect{|a| a.name == name}
  # end

  def initialize
    Artist.all << self
    @songs = []
  end

  # def self.all
  #   @@artists
  # end

  # def self.reset_all
  #   self.all.clear
  # end

  def self.count
    Artist.all.count
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
