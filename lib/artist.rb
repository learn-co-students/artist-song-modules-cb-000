require_relative './concerns/memorable.rb'
require_relative './concerns/paramable.rb'
require_relative './concerns/findable.rb'
require 'pry'


class Artist
  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name
  attr_reader :songs

  @@artists = []


  def initialize
    super
    @songs = []
  end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end



  def self.all
    @@artists
  end

=begin
  def self.reset_all
    self.all.clear
  end
=end

=begin
  def self.count
    @@artists.count
  end
=end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end



end
