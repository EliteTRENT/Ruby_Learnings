def linear_search(arr,n,k)
  for i in 0...arr.length
    if arr[i] == k
      return "#{k} found at index #{i}"
    end
  end
  return "Couldn't find #{k} in array"
end

print "Enter n: "
n = gets.chomp.to_i
print "Enter #{n} array elements: "
arr = gets.chomp.split.map{|x| x.to_i}
print "Enter k: "
k = gets.chomp.to_i
puts linear_search(arr,n,k) 