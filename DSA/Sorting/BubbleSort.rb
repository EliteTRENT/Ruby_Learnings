def bubble_sort(arr,n)
  for i in 0...n
    swapped = false
    for j in 0...n-i-1
      if arr[j] > arr[j+1]
        arr[j],arr[j+1] = arr[j+1],arr[j]
        swapped = true
      end
    end
    break unless swapped
  end
  return arr
end

print "Enter n: "
n = gets.chomp.to_i
print "Enter #{n} array elements: "
arr = gets.chomp.split.map{|x| x.to_i}
arr = bubble_sort(arr,n) 
puts arr.inspect

=begin
 - Best case: O(n) when the array is already sorted (only one pass through the array is required).
 - Worst case: O(n^2) when the array is sorted in reverse order (every element has to be swapped with every other element).
 - Average case: O(n^2) because, on average, every element has to be compared and potentially swapped with each other.
 Explanation: 
 In Bubble Sort, each pair of adjacent elements is compared and swapped if they are in the wrong order. 
 This process is repeated for every element in the array, resulting in quadratic time complexity in the worst and average cases.
=end