def common_elements(arr1,arr2)
  res = []
  arr1_set = Set.new(arr1)
  arr2.each do |ele|
    if arr1_set.include?(ele)
      res.push(ele)
    end
  end
  puts "Common Elements: #{res}"
end

print "Enter 1st array: "
arr1 = gets.chomp.split.map{|x| x.to_i}
print "Enter 2nd array: "
arr2 = gets.chomp.split.map{|x| x.to_i}
common_elements(arr1,arr2)
