def next_greater(nums1,nums2)
  res = []
  nums1.each do |ele|
    ind = nums2.index(ele)
    flag = true
    if ind == nums2.length-1
      res.push(-1)
    else
      for i in ind+1...nums2.length
        if nums2[i] > ele
          res.push(nums2[i])
          flag = false
          break
        end
      end
      if flag
        res.push(-1)
      end
    end
  end
  return res
end

print "Enter 1st array: "
nums1 = gets.chomp.split.map(&:to_i)
print "Enter 2nd array: "
nums2 = gets.chomp.split.map(&:to_i)
res = next_greater(nums1,nums2)
puts "Result: #{res.inspect}"