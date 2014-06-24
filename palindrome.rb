#!/usr/bin/env ruby
def palindrome(string)
  string_array = string.gsub(/(\W|\d)/, "").downcase.split(//)
  index = string_array.length
  reverse_array = []
  index.times { index -= 1; reverse_array = reverse_array.push(string_array[index])}
  
  if string_array == reverse_array
    puts "yep"
  else
    puts "nope"
  end
  
end

puts "Type a string and hit enter:\n"
text = gets

palindrome(text)