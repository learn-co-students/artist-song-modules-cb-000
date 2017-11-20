module Findable
  module ClassMethods
      def find_by_name(name)
        self.all.detect {|s| s.name == name}
      end
  end
end
