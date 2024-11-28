num = gets.chomp.to_i
fact = 1
while num > 1
  fact = fact * num
  num = num - 1
end
puts "Factorial: #{fact}"