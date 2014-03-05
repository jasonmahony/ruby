#!/usr/bin/env ruby

#def conversation
#  puts "Hello"
#  yield
#  puts "Goodbye"
#end
#
#conversation { puts "Good to meet you!" }

 #def five_times
 #  1.upto(5) { |m| yield m }
 #end
 #
 #five_times do |n| 
 #  puts "#{n} situps" 
 #  puts "#{n} pushups" 
 #  puts "#{n} chinups" 
 #end

def n_times(m)
  1.upto(m) do |y|
    yield y
  end
end
 
n_times(5) do |n| 
  puts "#{n} situps" 
  puts "#{n} pushups" 
  puts "#{n} chinups" 
end
 
