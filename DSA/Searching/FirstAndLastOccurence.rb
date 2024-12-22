def firstOccur(arr,n,k)
  left,right = 0,n-1
  while left <= right
    mid = left+(right-left)/2
    if arr[mid] == k
      return mid if mid == 0 || arr[mid-1] != k
      right = mid-1
    elsif arr[mid] > k
      right = mid-1
    elsif arr[mid] < k
      left = mid+1
    end
  end
  return -1
end

def lastOccur(arr,n,k)
  left,right = 0,n-1
  while left <= right
    mid = left+(right-left)/2
    if arr[mid] == k
      return mid if mid == n-1 || arr[mid+1] != k
      left = mid+1
    elsif arr[mid] > k 
      right = mid-1
    elsif arr[mid] < k
      left = mid+1
    end
  end
  return -1
end

print "Enter n: "
n = gets.chomp.to_i
print "Enter #{n} array elements: "
arr = gets.chomp.split.map{|x| x.to_i}
print "Enter k: "
k = gets.chomp.to_i
res = []
first = firstOccur(arr,n,k)
last = lastOccur(arr,n,k)
res.push(first,last)
puts res.inspect 