#!/usr/bin/env ruby

def cap_me(name_array)
  new_names = Array.new
  name_array.each do |name|
    new_names.push(name.downcase.capitalize)
  end
  return new_names
end

name_array = ['jo', 'nelson', 'jurie', 'JASON']
puts cap_me(name_array)
