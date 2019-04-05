require 'pry'

require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'

require_relative '../lib/artist.rb'
require_relative '../lib/song.rb'

# require_relative 'spec_helper.rb'



# song = Song.new
# puts "song.class should equal 'Song': #{song.class}"
# song.name = "Jump Around"
# puts "Song.name should equal 'Jump Around': #{song.name}"
# puts "song.to_param should equal 'jump-around': #{song.to_param}"
# song.artist = Artist.new.tap {|a| a.name = "miley"}
# puts "song.artist should have the class 'Artist': #{song.artist.class}"
# puts "song.artist.name should equal 'miley': #{song.artist.name}"
# puts "Song.all reads: #{Song.all}"
# puts "Song.count should return '1': #{Song.count}"
