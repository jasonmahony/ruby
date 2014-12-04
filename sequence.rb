#!/usr/bin/env ruby

def solution(digits)
#  return nil if digits.length < 5 || digits.to_i == 0
  digits.chars.map { |c| digits[digits.index(c), 5].to_i }.max
end

puts solution("23456987654")
puts solution("345")
puts solution("00" * 10000)
puts solution("678" * 99)
puts solution("6789999")