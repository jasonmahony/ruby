#/usr/bin/env ruby

def squareSum(numbers)
  numbers.map! {|num| num ** 2}.inject{|sum, x| sum + x }
end

squareSum([1,2, 2])
