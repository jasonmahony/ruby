#!/usr/bin/env ruby

def validate(email)
  e = email.chars
  return false unless e.select { |a| a = '@' }
  return false if e.grep =~ /^(\.)+|(\.)+\@|\@(\.)+|(\.)+$|\s/
  root = email.split('.').last
  return false unless email.split('.').last =~ /[a-z]{2,4}/
end

puts validate("jason.mahony@gmail.com")
puts validate("notreal.net")
puts validate("jason.mahony@gmail.dude.ca")
puts validate("noway")
puts validate("jason@server.")