def selection_sort(arr,n)
  for i in 0...n
    min_index = i
    for j in i+1...n
      if arr[j] < arr[min_index]
        min_index = j
      end
    end
    arr[i],arr[min_index] = arr[min_index],arr[i] if i != min_index
  end
  return arr
end

print "Enter n: "
n = gets.chomp.to_i
print "Enter #{n} array elements: "
arr = gets.chomp.split.map{|x| x.to_i}
arr = selection_sort(arr,n) 
puts arr.inspect

=begin
 - Best case: O(n^2) because no matter the initial ordering, the algorithm always performs n-1 comparisons for each element.
 - Worst case: O(n^2) for the same reason as the best case. Selection Sort doesn't benefit from being partially sorted.
 - Average case: O(n^2) because every element is compared with every other element.
 Explanation: 
 In Selection Sort, we repeatedly find the minimum element from the unsorted part of the array and swap it with the first unsorted element. 
 The number of comparisons made is always the same, leading to quadratic time complexity.
=end