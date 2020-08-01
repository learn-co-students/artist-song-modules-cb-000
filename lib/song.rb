require 'pry'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'
require_relative '../lib/concerns/memorable.rb'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
 extend Findable::ClassMethods
 include Paramable::InstanceMethods
 include Memorable::InstanceMethods

  @@songs = []




  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end


end
