def rotate(matrix)
  n = matrix.length

  matrix = matrix.transpose

  matrix.each do |row|
    row.reverse!
  end
  return matrix
end

matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

puts "Original Matrix:"
matrix.each { |row| puts row.inspect }

matrix = rotate(matrix)s

puts "\nMatrix after 90 degree rotation:"
matrix.each { |row| puts row.inspect }
