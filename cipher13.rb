#!/usr/bin/env ruby

# Ceasar Cipher offset of 13
def rot13(string)
  array = ("a".."z").to_a
  # Create "hash" of alphabet associated with number keys
  hash = Hash[array.map.with_index.to_a]
  cc = Array.new
  
  string.chars.each do |char|
    # Don't decode non-word characters
    if char !~ /[A-Za-z]/
      cc = cc.push(char)
    # Keep the same case of decoded characters
    elsif char == char.upcase
      cc = cc.push(hash.keys[((hash[char.downcase] + 14) % 26) - 1].upcase)
    else   
      cc = cc.push(hash.keys[((hash[char] + 14) % 26) - 1])
    end
  end
  cc.join
end

puts rot13("Grfg!")
