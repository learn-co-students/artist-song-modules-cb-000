module Memorable
  module ClassMethods
    def reset_all
      self.all.clear

      #Code that didn't work:
      #@@songs.clear
      #self.clear
      #Artist.artists.clear
      #@@artists.clear
      #Song.songs.clear
      #@@songs.clear
    end

    def count
      self.all.count

      #Code that didn't work:
      #Artist.artists.count
      #@@artists.count
      #Song.songs.count
      #@@songs.count
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end


end
