#!/usr/bin/env ruby

mB = [[1,2,3],
      [2,3,4],
      [3,4,5]]

mC = [[1,0,3],
      [2,0,4],
      [3,4,5]]

mD = [[1,2,3,9],
      [2,0,4,3],
      [3,4,5,8],
      [9,3,8,7]]

def output(is_symmetric)
   val = is_symmetric ? "symmetrisch" : "nicht symmetrisch"
    puts "Die Matrix ist #{val}!"  
end

def symmetric(matrix)
  0.upto(matrix.size()-1) { |i|
    0.upto(matrix.size()-1) { |j|
      if (matrix[i][j] != matrix[j][i])
	return false
      end
    }
  }
  return true
end

##################

matrix = mD
         
is_symmetric = symmetric(matrix)
         
output(is_symmetric)

exit 0