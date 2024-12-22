def binary_search(arr,n,k)
  left,right = 0,arr.length-1
  while left <= right
    mid = left+(right-left)/2
    if arr[mid] == k
      return "Found at index #{mid}"
    elsif arr[mid] > k
      right = mid-1
    else
      left = mid+1
    end
  end
  return "Couldn't find #{k} in array"
end

print "Enter n: "
n = gets.chomp.to_i
print "Enter #{n} sorted array elements: "
arr = gets.chomp.split.map{|x| x.to_i}
print "Enter k: "
k = gets.chomp.to_i
puts binary_search(arr,n,k) 