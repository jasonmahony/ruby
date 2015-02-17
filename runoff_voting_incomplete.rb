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


#0.upto(voters.size - 1) do |ballot|
#  count = Hash[voters[0].map { |i| [i, 0] }]

#  num_candidates = voters[0].size

  num_voters = voters.size
  num_candidates = voters[0].size
  deleted = 0
  count = Hash[voters[0].map {|i| [i, 0] }]
  voters.each do |ballot|
    count[ballot[0]] += 1 
  end
  # [[:dem, 1], [:rep, 1], [:ind, 2]]
  sorted_array = count.sort_by {|k, v| v}
  if sorted_array[num_candidates - 1][1] > num_voters / 2
    return sorted_array[num_candidates - 1][0]
  else
    0.upto(num_candidates - 1) do |del| 
      if sorted_array[del][1] == sorted_array[0][1]
        deleted += 1
        count.delete(sorted_array[del][0])
      end
    end
    sorted_array = count.sort_by {|k, v| v}
    return nil if sorted_array == nil 
    if sorted_array[num_candidates - deleted - 1][1] > num_voters / 2
      return sorted_array[num_candidates - deleted - 1][0]
    end
  end
end

voters = [[:dem, :ind, :rep],
          [:rep, :ind, :dem],
          [:ind, :dem, :rep],
          [:ind, :rep, :dem]]
          
puts runoff(voters)
