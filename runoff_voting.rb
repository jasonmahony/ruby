#!/usr/bin/env ruby

def runoff(voters)
#  num_voters = voters.size
#  count = Hash[voters[0].map { |i| [i, 0] }]
#  num_candidates = count.size
#  voters.each do |vote|
#    count[vote[0]] += 1
#  end
#  sorted_array = count.sort_by {|k, v| v}
#  if sorted_array[num_candidates - 1][1] > num_voters / 2
#    return sorted_array[num_candidates - 1][0]
#  elsif sorted_array[0][1] < sorted_array[num_candidates - 1][1]
#
#
#    if sorted_array[0][1] < sorted_array[1][1]
#  
#      new_voters = voters.map {|vote| vote - [sorted_array[0][0]] }
#      runoff(new_voters)
#    elsif sorted_array[0][1] = sorted_array[2][1]
#      
#      new_voters = voters.map {|vote| vote - [sorted_array[0][0], sorted_array[1][0], sorted_array[2][0]] }
#      runoff(new_voters) 
#      
#    elsif sorted_array[0][1] = sorted_array[1][1]
#      new_voters = voters.map {|vote| vote - [sorted_array[0][0], sorted_array[1][0]] }
#      runoff(new_voters)
#    end
#
#  else  
#    return nil
#  end

1.upto(voters.size) do |n|
  voters.each { |ballot| ballot[0] 

end

voters = [[:dem, :ind, :rep],
          [:rep, :ind, :dem],
          [:ind, :dem, :rep],
          [:ind, :rep, :dem]]
          
puts runoff(voters)
