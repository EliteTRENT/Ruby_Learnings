def DNF(arr,n)
  low,mid,high = 0,0,n-1
  while mid <= high
    if arr[mid] == 0
      arr[low],arr[mid] = arr[mid],arr[low]
      low += 1
      mid += 1
    elsif arr[mid] == 1
      mid += 1
    elsif arr[mid] == 2
      arr[mid],arr[high] = arr[high],arr[mid]
      high -= 1
    end
  end
  return arr
end
print "Enter array with 0, 1 and 2: "
arr = gets.chomp.split.map{|x| x.to_i}
arr = DNF(arr,arr.length)
puts arr.inspect
