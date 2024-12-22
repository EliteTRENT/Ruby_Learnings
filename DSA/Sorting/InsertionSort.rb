def insertion_sort(arr,n)
  for i in 1...n
    key = arr[i]
    j = i-1
    while j >= 0 && arr[j] > key
      arr[j+1] = arr[j]
      j -= 1
    end
    arr[j+1] = key
  end
  return arr
end

print "Enter n: "
n = gets.chomp.to_i
print "Enter #{n} array elements: "
arr = gets.chomp.split.map{|x| x.to_i}
arr = insertion_sort(arr,n) 
puts arr.inspect

=begin
 - Best case: O(n) when the array is already sorted (no shifting of elements is required).
 - Worst case: O(n^2) when the array is sorted in reverse order (every element needs to be shifted).
 - Average case: O(n^2) because, on average, each element is compared with all the elements before it, which results in quadratic time complexity.
 Explanation: 
 In Insertion Sort, elements are picked one by one and inserted into their correct position in the sorted part of the array. 
 The best case occurs when the array is already sorted, and the worst case happens when the array is in reverse order, requiring the maximum number of comparisons and shifts.
=end
