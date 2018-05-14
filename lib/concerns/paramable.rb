module Paramable
  
  # convert name into slug
  def to_param
    name.downcase.gsub(' ', '-')
  end
end