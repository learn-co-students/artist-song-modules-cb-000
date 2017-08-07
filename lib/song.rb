require 'pry'

class Song
  extend Findable::ClassMethods, Memorable::ClassMethods
  include Paramable::InstanceMethods, Memorable::InstanceMethods
  attr_accessor :name, :artist

  @@songs = []

  def self.all
    @@songs
  end
end
