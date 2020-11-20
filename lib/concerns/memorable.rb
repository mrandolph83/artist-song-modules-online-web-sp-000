module Memorable
  module ClassMethods
  # When you are defining class methods
  # within modules, omit the self keyword when
  # defining those methods.
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

end 
