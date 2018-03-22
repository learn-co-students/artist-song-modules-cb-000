require_relative './concerns/memorable.rb'
require_relative './concerns/paramable.rb'
require_relative './concerns/findable.rb'
require 'pry'


class Song
  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []


  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end


  def artist=(artist)
    @artist = artist
  end

=begin
  def self.reset_all
    @@songs.clear
  end
=end




  def self.count
    self.all.count
  end


  def self.all
    @@songs
  end
end
