#!/usr/bin/env ruby

class Array
  def contains_all?(other_array)
    other_array.select { |e| self.include?(e) } == other_array
  end
end

# Should return "true"
puts [1, 2, 3, 4, 5, 6, 7, 8].contains_all?([1, 5, 3])

# Should return "false"
puts [1, 2, 3, 4, 5, 6, 7, 8].contains_all?([1, 5, 13])