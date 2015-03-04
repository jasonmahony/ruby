#!/usr/bin/env ruby

class Node
  attr_accessor :ptr, :data

  def initialize(data, ptr=nil)
    @ptr = ptr
    @data = data
  end 
end

list = Node.new("best_str", Node.new("good_str", Node.new("some_str", Node.new("cool_str"))))

while list.ptr
  puts list.data
  list = list.ptr
end
puts list.data
