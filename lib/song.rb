require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    #@@songs << self
    super
  end

  #def self.find_by_name(name)
  #  @@songs.detect{|a| a.name == name}
  #end

  def artist=(artist)
    @artist = artist
  end

  # class method
  #def self.reset_all
  #  @@songs.clear
  #end

  # Instance method
  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end

  # class method
  #def self.count
  #  self.all.count
  #end

  def self.all
    @@songs
  end
end
