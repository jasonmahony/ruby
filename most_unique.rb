#!/usr/bin/env ruby

# Accepts unknown count of integers
def find_suspect(*numbers)
  suspect_count = Hash.new
  # Count number of times integers occurs in list and tally in hash
  numbers.each { |suspect| suspect_count[suspect] = suspect_count[suspect].to_i + 1 }
  # Integers placed into array of arrays ordered by count 
  sorted_count = suspect_count.sort_by {|key, value| value}
  if sorted_count.size == 1
    return sorted_count[0][0]
  elsif sorted_count.size == 0
    return nil
  elsif sorted_count[0][1] < sorted_count[1][1]
    # Returns integer with the fewest instances
    return sorted_count[0][0]
  else
    # If all integers have same count return nil
    return nil
  end
end

# outputs 777
puts find_suspect(777,3,4,4,5,5,6,6,99,99,3)
# outputs nil
puts find_suspect(33,44)
# outputs nil
puts find_suspect()