#!/usr/bin/env ruby

def ip_to_int32(ip)
  ip.split(".").map {|num| '%08b' % num}.join('').to_i(base=2)
end

puts ip_to_int32("128.32.10.1")
