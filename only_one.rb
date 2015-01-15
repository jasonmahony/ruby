#!/usr/bin/env ruby

# Determine if there is one and only one match in list
def one? list, &block
  list.one? &block
end

list = [0,1,2,3,5,8,13,13]
puts one?(list){ |item| item == 13} # should return false
