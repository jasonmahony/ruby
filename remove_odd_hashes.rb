#!/usr/bin/env ruby

def remove_odd_hashes(array)
  # only add hashes where sum of values is even
  array.select { |h| h.values.reduce(:+).even? }
end

puts remove_odd_hashes([{a: 5, b: 5}, {b: 6, c: 7}, {a: 4, b: 4}])
