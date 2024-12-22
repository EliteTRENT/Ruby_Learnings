def KthLargest(arr,n,k)
  if n-k >= 0
    return arr[n-k]
  else 
    return "Wrong Input"
  end
end
def sort(arr,n)
  for i in 0...n
    for j in 0...n-i-1
      if arr[j] > arr[j+1]
        arr[j],arr[j+1] = arr[j+1],arr[j]
      end
    end
  end
  return arr
end
print "Enter n: "
n = gets.chomp.to_i
print "Enter #{n} array elements: "
arr = gets.chomp.split.map{|x| x.to_i}
print "Enter k: "
k = gets.chomp.to_i
sorted_array = sort(arr,n)
res = KthLargest(sorted_array,n,k)
puts "Result: #{res}"