#!/usr/bin/env ruby

voters = [[:dem, :ind, :rep],
          [:rep, :ind, :dem],
          [:ind, :dem, :rep],
          [:ind, :rep, :dem]]
count = Hash[voters[0].map { |i| [i, 0] }]  
num = voters.length

 voters.map do |vote|
    vote - [:rep]
 end

#voters.each do |vote|
#  num.times do
#    case vote.shift
#    when :dem
#      count[:dem] += 1
#    when :rep
#      count[:rep] += 1
#    when :ind
#      count[:ind] += 1
#    end
#  end
#end

print count