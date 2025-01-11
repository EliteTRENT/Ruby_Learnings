def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |x , i|
      y = target - x
      return [hash[y], i] if hash.key?(y)
      hash[x] = i
      puts "#{hash} is the answer you are trying to find"
      
  end
end

arr = [1,2,3,4,5,6,7]
puts two_sum(arr, 7).inspect