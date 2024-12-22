print "Enter n: "
n = gets.chomp.to_i
print "Enter #{n} sorted array elements: "
arr = gets.chomp.split.map{|x| x.to_i}
print "Enter k: "
k = gets.chomp.to_i
if arr.find_index(k) == nil
  puts "Couldn't find #{k} in array"
else
  puts "Element found at index: #{arr.find_index(k)}"
end