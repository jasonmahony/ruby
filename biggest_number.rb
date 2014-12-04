#!/usr/bin/env ruby

# Returns the greatest 5 digit number by rearranging all digits of an integer
def solution(digits)
  digits.chars.map { |c| c.to_i }.sort.reverse[0, 5].join.to_i
end

puts solution("068765")
puts solution("345")
puts solution("00" * 10000)
puts solution("678" * 99)
puts solution("0006789999")
