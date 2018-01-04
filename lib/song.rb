require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name, :artist
  #attr_reader :artist

  @@songs = []

  def initialize
  #  @@songs << self
    super
  end

  #def self.find_by_name(name)
  #  @@songs.detect{|a| a.name == name}
  #end

  #def artist=(artist)
  #  @artist = artist
  #end

  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end

  #def self.reset_all
  #  @@songs.clear
  #end

  #def self.count
  #  self.all.count
  #end

  def self.all
    @@songs
  end
end
