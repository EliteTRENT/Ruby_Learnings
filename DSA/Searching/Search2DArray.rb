def search_matrix(matrix,target)
  return false if matrix.empty? || matrix[0].empty?
  rows = matrix.length
  cols = matrix[0].length
  low,high = 0,rows*cols-1
  while low <= high
    mid = (low+high)/2
    mid_value = matrix[mid/cols][mid%cols]
    if mid_value == target
      return true
    elsif mid_value > target
      high = mid-1
    else 
      low = mid+1
    end
  end
  return false
end
matrix = [
  [1,2,3,4],
  [5,6,7,8],
  [9,10,11,12]
]

target = 13

if search_matrix(matrix,target)
  puts "#{target} found in the matrix"
else 
  puts "#{target} not found in the matrix"
end