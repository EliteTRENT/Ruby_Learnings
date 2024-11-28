print "Enter array elements seperated by space: "
arr = gets.chomp.split.map{|x| x.to_i}
sum = arr.sum
puts "Sum of the array: #{sum}"