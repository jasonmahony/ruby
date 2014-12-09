#!/usr/bin/env ruby

# Makes a sentence out of string array elements
def make_sentence parts
  # Join the strings to create a sentence
  # Add spaces after commas and end with a period
  parts.join(' ').gsub(/\s[,.]/," ," => ",", " ." => "") << "."
end

puts make_sentence(['hello', ',', '.', 'my', 'dear'])
