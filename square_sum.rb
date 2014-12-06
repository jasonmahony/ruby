#!/usr/bin/env ruby

# Method that takes array and sums squares of integer elements
def square_sum(numbers)
  numbers.map! {|num| num ** 2}.inject {|sum, x| sum + x }
end

puts square_sum([1, 2, 2])
