require 'pry'
require_relative '../config/environment.rb'


class Song
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end



  def self.all
    @@songs
  end
end
