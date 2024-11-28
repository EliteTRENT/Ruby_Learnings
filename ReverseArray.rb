def reverseArr(arr)
  arr.reverse
end

arr = []
print "How many elements in array: "
num = gets.chomp.to_i
for i in 1..num
  n = gets.chomp.to_i
  arr.push(n)
end
print "Original Array: "
for i in 0..(num-1)
  print "#{arr[i]} "
end
puts "\n"

arr = reverseArr(arr)

print "Reversed Array: "
for i in 0..(num-1)
  print "#{arr[i]} "
end

#How to reverse array but in this we take array inputs using a loop and we can't take single line inputs.