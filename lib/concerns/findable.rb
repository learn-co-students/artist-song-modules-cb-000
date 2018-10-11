module Findable

def find_by_name(name)
  all.detect{|i| i.name == name}
end


end
