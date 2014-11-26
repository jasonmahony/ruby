#!/usr/bin/env ruby

# Method returning recursive sum of all the digits in a number
def digital_root(n)
  # Return number if it can't be reduced further
  return n if n.size == 1
  # Evaluate the sum of digits use recursion on the sum
  digital_root(n.to_s.chars.inject {|sum, n| sum.to_i + n.to_i })
end

# 942
# => 9 + 4 + 2
# => 15
# => 1 + 5 => 6
puts digital_root(942)

# One more just for fun
puts digital_root(456374811)
