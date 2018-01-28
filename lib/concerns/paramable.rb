module Paramable
  module InstanceMethods
    def to_param
      name.downcase.gsub(' ', '-')
      name.downcase.gsub(' ', '-')
    end
  end
end
