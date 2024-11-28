arr1 = gets.chomp.split.map{|x| x.to_i}
arr2 = gets.chomp.split.map{|x| x.to_i}
sum1 = arr1.sum
sum2 = arr2.sum
puts "Missing Value: #{sum1-sum2}"