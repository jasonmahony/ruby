#!/usr/bin/env ruby

def find_suspect(*numbers)
  sorted_nums = *numbers.sort
  length = sorted_nums.length
  suspect_count = Hash.new
  sorted_nums.each do |suspect|
    suspect_count[suspect] = suspect_count[suspect].to_i + 1
  end
  sorted_count = suspect_count.sort_by {| key, value| value}
  if sorted_count.size == 1
    return sorted_count[0][0]
  elsif sorted_count.size == 0
    return nil
  elsif sorted_count[0][1] < sorted_count[1][1]
    return sorted_count[0][0]
  else
    return nil
  end
end
