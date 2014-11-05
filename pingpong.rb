#!/usr/bin/env ruby

def service(score)
  sum = score.split(":").map(&:to_i).reduce(:+)
  if sum < 40
    (sum / 5).even? ? "first" : "second"
  else 
    ((sum - 40) / 2).even? ? "first" : "second"
  end
end

puts service('11:2')