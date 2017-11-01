require 'pry'

class Song
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable
  extend Paramable
  attr_accessor :name
  attr_reader :artist

  @@all = []



#  def self.find_by_name(name)
#    @@all.detect{|a| a.name == name}
#  end

  def artist=(artist)
    @artist = artist
  end

#  def self.reset_all
#    @@all.clear
#  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

#  def self.count
#    self.all.count
#  end

  def self.all
    @@all
  end
end
