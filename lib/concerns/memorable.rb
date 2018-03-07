def Memorable
  module ClassMethods

    def reset_all
      self.all.clear
    end

    def count
      @@artists.count
    end

    module InstanceMethods
      def initialize
        self.class.all << self
    end
  end
end
