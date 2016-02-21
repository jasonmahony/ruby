#!/usr/bin/env ruby

array = []
array.push "Jason"
array.push "Julie"
puts array.shuffle
puts array.pop
puts array.pop
if array.empty?
  puts "empty array"
end
