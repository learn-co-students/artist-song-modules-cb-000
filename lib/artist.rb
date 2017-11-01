require 'pry'

class Artist
  @@all = []

  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable
  extend Paramable
  attr_accessor :name
  attr_reader :songs


#  def self.find_by_name(name)
#    @@all.detect{|a| a.name == name}
#  end

  def initialize
    super
    @songs = []
  end

  def self.all
    @@all
  end

#  def self.reset_all
#    self.all.clear
#  end

#  def self.count
#    @@all.count
#  end

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
