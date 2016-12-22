require_relative "./concerns/paramable.rb"
require_relative "./concerns/memorable.rb"
require_relative "./concerns/findable.rb"
require 'pry'

class Song
  include Paramable
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable

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
