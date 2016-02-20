#!/usr/bin/env ruby

# Determine if block does not match items in list
def none? list, &block
  list.none? &block
end

puts none? [1,2,44]{ |x| x == 13 } # Returns true
