arr = []
puts "Add 5 elements: "
for i in 0..4
  n = gets.chomp.to_i
  arr.push(n)
end
for i in 0..4
  puts "Index #{i} = #{arr[i]}"
end