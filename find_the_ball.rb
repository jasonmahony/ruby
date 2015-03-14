#!/usr/bin/env ruby

# Determines final resting place of ball
# given starting location and sequence of swaps 
def find_the_ball start, swaps
  return start if swaps.empty?
  if start == swaps[0][0]
    start = swaps[0][1]
  elsif start == swaps[0][1]
    start = swaps[0][0]
  end
  swaps.shift
  find_the_ball(start, swaps) 
end

swaps = [[0,1], [1,2], [1, 0]]
puts find_the_ball(0, swaps) # Should return 2
