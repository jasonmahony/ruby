#!/usr/bin/env ruby

def sum(*args)
  args.select { |x| x.is_a?(Integer) }.reduce(:+)
end

puts sum(1,2,3,4)
