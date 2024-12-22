print "Enter n: "
n = gets.chomp.to_i
print "Enter elements excluding one from range: "
arr = gets.chomp.split.map{|x| x.to_i}
req_XOR = 0
arr_XOR = 0
1.upto(n) do |i|
  req_XOR ^= i
end

arr.each do |ele|
  arr_XOR ^= ele
end

puts "Missing Element: #{req_XOR^arr_XOR}"