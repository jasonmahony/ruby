#!/usr/bin/env ruby

# Take an unlimited number of arguments
def sum(*args)
  # Select the integer args and sum
  args.select { |x| x.is_a?(Integer) }.reduce(:+)
end

puts sum(1,2,3,4)
