#!/usr/bin/env ruby

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

#  sum = [ a[0][0] + b[0][0]], a[0][1] + b[0][1] ], [ a[1][0] + b[1][0]], a[1][1] + b[1][1] ]
#matrixA = [ [[a[0][0], a[0][1], a[0][2]], [3, 2, 4], [3, 2, 4] ]
#matrixB = [ [2, 2, 5], [1, 3, 4], [3, 2, 4] ]