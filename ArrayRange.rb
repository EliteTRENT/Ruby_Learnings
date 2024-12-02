print "Enter array elements: "    # Should be in ascending order
arr = gets.chomp.split.map{|x| x.to_i}
result = []
lower, upper = 0, 0
for i in 0...(arr.length)
  if arr[i]+1 != arr[i+1] && lower == upper
    result.push("#{arr[i]}")
    lower += 1
    upper += 1
  elsif arr[i]+1 != arr[i+1]
    result.push("#{arr[lower]}->#{arr[upper]}")
    lower = i+1
    upper = i+1
  else 
    upper = i+1
  end
end

print "Resultant Array: #{result}"