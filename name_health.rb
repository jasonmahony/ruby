#!/usr/bin/env ruby

name = ""

def say_hello(name, health)
  "Hi, I'm #{name.capitalize} with a health of #{health}"
end

def calc_health(f_letter)
  letters = ('a'..'z').to_a
  numbers = (1..26).to_a
  hash = Hash[letters.zip numbers]
  hash[f_letter]  
end

while name != "quit"
  puts "Enter the name and hit enter. Type 'quit' to exit"
  name = gets.chomp
  if name == "quit"
    break
  else
  first = name[0].downcase
  puts say_hello(name, calc_health(first))
  end
end

