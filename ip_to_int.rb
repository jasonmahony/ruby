#!/usr/bin/env ruby

# Trasform ip address to a base 10 integer
def ip_to_int32(ip)
  # Separate octets converting each to binary
  # Smoosh to create 32bit binary. Convert to integer
  ip.split(".").map {|num| '%08b' % num}.join('').to_i(base=2)
end

puts ip_to_int32("128.32.10.1")
