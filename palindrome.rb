#!/usr/bin/env ruby

# Find palindrome without using reverse method
def palindrome(string)
  # Strip out non-word and non-number characters
  string_array = string.gsub(/(\W|\d)/, "").downcase.split(//)
  index = string_array.size
  reverse_array = []
  index.times { index -= 1; reverse_array = reverse_array.push(string_array[index])}
  
  # Prints "yep" if input is palindrome or "nope" if not
  if string_array == reverse_array
    puts "yep"
  else
    puts "nope"
  end
  
end

puts "Type a string and hit enter:\n"
text = gets

palindrome(text)