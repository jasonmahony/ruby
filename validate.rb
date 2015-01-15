#!/usr/bin/env ruby

# Validate string and return the requested numeric value or 'invalid'
# gsub, loops and blocks are NOT permitted
def validation string
  return "invalid" if string =~ /\d{9,}/
  /\D/.match(string.strip)  ? "invalid" : string.to_i + 1
end

puts validation(" 00998887") # Should return 998888
