#!/usr/bin/env ruby

# Sums 2 equal sized matrices
def matrixAddition(a, b)
  n = a.length
  c = Array.new
  0.upto(n-1) do |x|
  # reinitialize the sum_array otherwise values from previous iteration carry over
  sum_array = Array.new  
    0.upto(n-1) do |y|
      sum_array = sum_array.push(a[x][y] + b[x][y])
    end
    c[x] = sum_array
  end 
  return c
end

matrixA = [ [1, 2, 5], [3, 2, 4], [3, 2, 4] ]
matrixB = [ [2, 2, 5], [1, 3, 4], [3, 2, 4] ] 
print matrixAddition(matrixA, matrixB)
