print "Enter n: "
n = gets.chomp.to_i
print "Enter #{n} array elements: "
arr = gets.chomp.split.map{|x| x.to_i}
global_sum = 0
temp_sum = 0
for i in 0...arr.length
  temp_sum = [temp_sum,temp_sum+arr[i]].max
  if temp_sum > global_sum
    global_sum = temp_sum
  end
end
puts "Maximum sum of a subarray: #{global_sum}"