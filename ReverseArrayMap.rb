print "Enter numbers seperated by spaces: "
arr = gets.chomp.split.map{|x| x.to_i}
puts "Original Array: #{arr}"
arr = arr.reverse
puts "Reversed Array: #{arr}"