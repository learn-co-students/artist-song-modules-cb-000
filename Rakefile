require_relative './config/environment.rb'
puts 'Welcome to Artists & Songs'

def reload!
  load './lib/artist.rb'
  load './lib/song.rb'
end

desc 'A console'
task :console do
  Pry.start
end
