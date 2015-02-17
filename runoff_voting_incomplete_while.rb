#!/usr/bin/env ruby

def runoff(voters)
  num_voters = voters.size
  rounds = voters[0].size - 1
  candidates = voters[0].uniq
  puts candidates
  deleted = 0
  count = Hash[voters[0].map {|i| [i, 0] }]
  0.upto(rounds) do |can|
    voters.each {|ballot| count[ballot[can]] += 1 unless count[ballot[can]] == nil}
    sorted_array = count.sort_by {|k, v| v}
    if sorted_array[candidates - deleted][1] > (num_voters - deleted) / 2
      return sorted_array[candidates - deleted][0]
    else
      0.upto(rounds - deleted) do |del| 
        if sorted_array[del][1] == sorted_array[0][1]
          deleted += 1
          count.delete(sorted_array[del][0])
        end
      end
      return nil if count == nil
    end
  end
end

voters = [[:dem, :ind, :rep],
          [:rep, :ind, :dem],
          [:ind, :dem, :rep],
          [:ind, :rep, :dem]]

voters2 = [[:a, :b, :c],
           [:a, :b, :c],
           [:a, :b, :c],
           [:b, :c, :a],
           [:b, :c, :a],
           [:c, :b, :a],
           [:d, :b, :a],
           [:e, :b, :a]]
           
voters3 = [[:a, :b, :c],
           [:a, :b, :c],
           [:a, :b, :c],
           [:b, :c, :a],
           [:b, :c, :a],
           [:c, :b, :a],
           [:d, :b, :a]]          
puts runoff(voters3)
