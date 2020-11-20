module Findable

  def find_by_name(name)
  # Searches for class by name using the
  # detect method
      all.detect {|a| a.name == name}
    end

end
