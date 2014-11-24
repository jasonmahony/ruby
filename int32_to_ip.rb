#!/usr/bin/env ruby

def int32_to_ip(int32)
  # Code that takes an integer, turns it into a 32bit binary and divides it to base10 octets.
  int32.to_s(2).rjust(32, '0').scan(/.{8}/).map { |o| o.to_i(2) }.join(".")
end

# Should evaluate to "128.32.10.1"
puts int32_to_ip(2149583361)