#!/usr/bin/env ruby

def runoff(voters)
  num = voters.length
  count = Hash[voters[0].map { |i| [i, 0] }]
  voters.each do |vote|
    count[vote[0]] += 1
  end
  sorted_array = count.sort_by {|k, v| v}.reverse
  if sorted_array[0][1] > num / 2
    return sorted_array[0][0]
  else
    
  
  
  end
end

voters = [[:dem, :ind, :rep],
          [:rep, :ind, :dem],
          [:ind, :dem, :rep],
          [:dem, :rep, :dem],
          [:ind, :rep, :dem]]

puts runoff(voters)