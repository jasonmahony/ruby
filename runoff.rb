#!/usr/bin/env ruby

def runoff(voters)
  num = voters.length
  count = {:dem => 0, :ind => 0, :rep => 0}
  voters.each do |vote|
    case vote.shift
    when :dem
      count[:dem] += 1
    when :rep
      count[:rep] += 1
    when :ind
      count[:ind] += 1
    end
  end
  sorted_array = count.sort_by {|k, v| v}.reverse
  if sorted_array[0][1] > num / 2
    return sorted_array[0][0]
  elsif sorted_array[0][1] == sorted_array[2][1] 
    return nil
  else
    runoff(voters)
  end
end

voters = [[:dem, :ind, :rep],
          [:rep, :ind, :dem],
          [:ind, :dem, :rep],
          [:dem, :rep, :dem],
          [:ind, :rep, :dem]]

puts runoff(voters)