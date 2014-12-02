#!/usr/bin/env ruby

def validate(email)
  # Make sure periods and @ symbols are in the correct locations
  return false if email =~ /^\.|\.@|@\.|\.$|\s|\.{2,}/
  # No more than 1 @ and the root domain is 2-4 chars
  return false unless email =~ /^[^@]+@[^@]+\.[a-zA-Z]{2,4}$/
  return true
end

# Valid
puts validate("Jason.Mahony@gmail.om")
# All invalid
puts validate("notreal.net")
puts validate("jason.mahony.@gmail.dude.ca")
puts validate(".noway")
puts validate("jason@server.")
puts validate("jason@se@rver.")
puts validate("jas@vm..comm")

