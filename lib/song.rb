require 'pry'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable
  extend Findable
  include Paramable
  # @@songs = []

  def initialize
    Song.all << self
  end

  # def self.find_by_name(name)
  #   Song.all.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
  end

  # def self.reset_all
  #   @@songs.clear
  # end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  def self.count
    Song.all.count
  end

  # def self.all
  #   @@songs
  # end
end
