#!/usr/bin/env ruby

def runoff(voters)
  num_voters = voters.length
  count = Hash[voters[0].map { |i| [i, 0] }]
  num_candidates = count.length
  candidate_index = num_candidates - 1
  voters.each do |vote|
    count[vote[0]] += 1
  end
  tallied_votes = count.sort_by {|k, v| v}
#  puts "#{num_voters} #{num_candidates}"
#  print tallied_votes
#  puts "\n"
#  print count
  if tallied_votes[num_candidates - 1][1] > num_voters / 2
    return tallied_votes[num_candidates - 1][0]
  elsif tallied_votes[0][1] < tallied_votes[num_candidates - 1][1]
#    case tallied_votes[0][1]
#    when tallied_votes[num_candidates][1] do
#      new_voters = voters.map {|vote| vote - [tallied_votes[0..candidate_index][0]]
    puts 0   
#    if tallied_votes[0][1] = tallied_votes[num_candidates - 2][1]
#      
#      new_voters = voters.map {|vote| vote - [tallied_votes[0][0], tallied_votes[1][0], tallied_votes[2][0]] }
#      runoff(new_voters)   
#    
#
#    elsif tallied_votes[0][1] = tallied_votes[1][1]
#      new_voters = voters.map {|vote| vote - [tallied_votes[0][0], tallied_votes[1][0]] }
#      runoff(new_voters)
#    else #tallied_votes[0][1] < tallied_votes[1][1]
#  
#      new_voters = voters.map {|vote| vote - [tallied_votes[0][0]] }
#      runoff(new_voters)
#    end
#
  else  
    return nil
  end
end

voters = [[:dem, :ind, :rep],
          [:rep, :ind, :dem],
          [:ind, :dem, :rep],
          [:dem, :rep, :dem],
          [:ind, :rep, :dem]]

runoff(voters)
