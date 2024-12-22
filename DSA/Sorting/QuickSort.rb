def partition(arr,low,high)
  pivot = arr[high]
  i = low-1
  (low..high-1).each do |j|
    if arr[j] <= pivot
      i += 1
      arr[i],arr[j] = arr[j],arr[i]
    end
  end
  arr[i + 1], arr[high] = arr[high], arr[i + 1]
  return i+1
end

def quick_sort(arr,low=0,high=arr.length-1)
  if low < high
    pi = partition(arr,low,high)
    quick_sort(arr,low,pi-1)
    quick_sort(arr,pi+1,high)
  end
end

print "Enter n: "
n = gets.chomp.to_i
print "Enter #{n} array elements: "
arr = gets.chomp.split.map{|x| x.to_i}
quick_sort(arr) 
puts arr.inspect