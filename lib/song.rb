require 'pry'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'

class Song

  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods
  #include FancyDance::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  #def initialize
  #  self.class.all << self
  #end

  #def self.find_by_name(name)
  #  @@songs.detect{|a| a.name == name}
  #end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

#  def to_param
#    name.downcase.gsub(' ', '-')
#  end
end
