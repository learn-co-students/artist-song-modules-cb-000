require 'pry'

class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  @@artists = []
  attr_accessor :name, :songs

  def initialize
    super
    @songs=[]
  end

  def self.all
    @@artists
  end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

    def add_song(song)
      puts "****************************song:#{song}"
      @songs << song
      song.artist = self
    end

    def add_songs(songs)
      songs.each { |song| add_song(song) }
    end

end #class
  #
  # @@artists = []
  #
  # # def initialize
  # #   # @@artists << self
  # #   super
  # #   @songs = []
  # # end
  # def initialize
  #   super
  #   puts "*****ALL::#{@all}"
  #   @songs = []
  # end
  #

  #
  #


  # def self.reset_all
  #   self.all.clear
  # end
  #
  # def self.count
  #   @@artists.count
#   # end
#
#
#
#
# end
