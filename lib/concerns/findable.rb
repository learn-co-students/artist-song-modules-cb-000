module Findable

    def find_by_name(name)
        self.all.detect {|elem| elem.name == name }
    end

end
