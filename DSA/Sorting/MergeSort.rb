def merge(left,right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else 
      sorted << right.shift
    end
  end
  return (sorted + left + right)
end

def merge_sort(arr)
  return arr if arr.length <= 1
  mid = arr.length/2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..])
  return merge(left,right)
end

print "Enter n: "
n = gets.chomp.to_i
print "Enter #{n} array elements: "
arr = gets.chomp.split.map{|x| x.to_i}
arr = merge_sort(arr) 
puts arr.inspect