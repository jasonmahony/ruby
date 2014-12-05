#!/usr/bin/env ruby

# Accepts array of names, returns array capitalized
def cap_me(name_array)
  name_array.map { |name| name.capitalize }
end

name_array = ['jo', 'nelson', 'jurie', 'JASON']
puts cap_me(name_array)
