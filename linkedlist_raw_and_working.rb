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



#while list.ptr
#  tmp_list = Entry.new(list.ptr)
#  list = list.ptr
#end
#while tmp_list.ptr
#  puts tmp_list.data
#  tmp_list = tmp_list.ptr
#end
#puts tmp_list.data
#(i).downto(1) do |n|
#  n.times do
#    new_list = new_list.ptr
#  end
#  puts list.data
#end

#class List
#  def initialize
#    @head = nil
#    @tail = nil
#  end
#  def ptq(entry)
#    if @head.nil?
#      @head = entry
#      @tail = entry
#    else
#      entry.next = @head
#      @head = entry
#    end
#  end

#  def pbq(entry)
#    if @head.nil?
#      @head = entry
#      @tail = entry
#    else
#      @tail.next = entry
#      @tail = entry
#    end
#  end
#  def rtq
#    return nil if @head.nil?
#    entry = @head
#    @head = @head.next
#    return entry
#  end


#http://en.wikipedia.org/wiki/Linked_list
#http://commandercoriander.net/blog/2012/12/23/reversing-a-linked-list-in-ruby/
#http://zvkemp.github.io/blog/2014/12/15/introduction-to-functional-programming-in-ruby-linked-lists/
#
#https://github.com/bbatsov/ruby-style-guide/issues/237
#
#Ruby Arrays can function as Linked Lists and have the advantage of direct, random access to any element. However, they're more expensive due to the "shift"-ing of data.
#When repeatedly inseting, removing and reordering elements in large lists, you increase performance with a Linked List data structure.