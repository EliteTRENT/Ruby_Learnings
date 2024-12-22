def peakElement(arr,n)
  return n-1
end

print "Enter n: "
n = gets.chomp.to_i
print "Enter #{n} array elements: "
arr = gets.chomp.split.map{|x| x.to_i}
arr.sort!
ind = peakElement(arr,n)
puts "Peak Element is at index: #{ind}"