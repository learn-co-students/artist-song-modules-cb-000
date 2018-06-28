require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable.rb'
require_relative '../lib/concerns/findable.rb'

class Song
  extend Findable, Memorable::ClassMethods
 include Memorable::InstanceMethods, Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end


  #def self.count
    #self.all.count
  #end

  def self.all
    @@songs
  end
end
