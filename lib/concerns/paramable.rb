# Paramble module
module Paramble
  def to_param
    name.downcase.tr(' ', '-')
  end
end
