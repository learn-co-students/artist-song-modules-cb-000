require 'pry'
require_relative 'concerns/memorable.rb'
require_relative 'concerns/findable.rb'
require_relative 'concerns/paramable.rb'


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
