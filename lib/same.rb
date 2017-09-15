attr_accessor :name
attr_reader :artist(in songs)
attr_reader :songs(in artist)

def initialize
  @@self << self
end

def self.find_by_name(name)
  @@self.detect{|a| a.name == name}
end


  def self.reset_all
    self.all.clear
  end

  def self.count
    @@self.count
  end



    def to_param
      name.downcase.gsub(' ', '-')
    end
