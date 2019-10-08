module Findable 
  
  def find_by_name(name)
    self.all.detect {|artist| artist.name == name} 
  end 
  
end 