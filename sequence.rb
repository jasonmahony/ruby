#!/usr/bin/env ruby

# Find the greatest sequence of 5 digits in an integer string
def solution(digits)
  # Return nothing if input has less than 5 digits or it equals 0
  return nil if digits.length < 5 || digits.to_i == 0
  digits.chars.map { |c| digits[digits.index(c), 5].to_i }.max
end

puts solution("234506984")
puts solution("345")
puts solution("00" * 10000)
puts solution("678" * 99)
puts solution("6789999" * 10000)