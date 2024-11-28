=begin
In this code, the values of array will always be positive and hence no negative values will bre present.
=end
arr = gets.chomp.split.map{|x| x.to_i}
max = 0
for i in 0..(arr.length-1)
  if arr[i] > max
    max = arr[i]
  end
end

for i in 1..max
  if arr.include?(i)
    next
  else
    puts "Missing No. #{i}"
  end
end