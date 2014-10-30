#!/usr/bin/env ruby

def digital_root(n)
  return n if n.size == 1
  digital_root(n.to_s.chars.inject {|sum, n| sum.to_i + n.to_i })
end
puts digital_root(456374811)