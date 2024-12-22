print "Enter num1: "
num1 = gets.chomp.to_i
print "Enter #{num1} sorted array elements: "
arr = gets.chomp.split.map{|x| x.to_i}
print "Enter num2: "
num2 = gets.chomp.to_i
print "Enter #{num2} sorted array elements: "
brr = gets.chomp.split.map{|x| x.to_i}
first_point = num1-1
second_point = num2-1
res = []
while first_point >=0 || second_point >= 0
  if first_point < 0
    res.unshift(brr[second_point])
    second_point -= 1
  elsif second_point < 0
    res.unshift(arr[first_point])
    first_point -= 1
  elsif arr[first_point] >= brr[second_point]
    res.unshift(arr[first_point])
    first_point -= 1
  else
    res.unshift(brr[second_point])
    second_point -= 1
  end
end
puts res.inspect
