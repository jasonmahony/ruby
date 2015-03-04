#!/usr/bin/env ruby

class Node
  attr_accessor :ptr, :data

  def initialize(data, ptr=nil)
    @ptr = ptr
    @data = data
  end 
end

list = Node.new("best_str", Node.new("good_str", Node.new("some_str", Node.new("cool_str"))))

new_list = Node.new(list.data)
while list.ptr
  list = list.ptr
  new_list = Node.new(list.data, new_list)
end

while new_list.ptr  
  puts new_list.data   
  new_list = new_list.ptr  
end                
puts new_list.data