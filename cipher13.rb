#!/usr/bin/env ruby

def rot13(string)
  array = ("a".."z").to_a
  hash = Hash[array.map.with_index.to_a]
  cc = Array.new
  
  string.chars.each do |char|
    if char !~ /[A-Za-z]/
      cc = cc.push(char)
    elsif char == char.upcase
      cc = cc.push(hash.keys[((hash[char.downcase] + 14) % 26) - 1].upcase)
    else
      cc = cc.push(hash.keys[((hash[char] + 14) % 26) - 1])
    end
  end
  cc.join() 
end

rot13("gRfg?")