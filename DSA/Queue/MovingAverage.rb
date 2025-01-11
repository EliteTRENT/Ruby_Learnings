def moving_avg(arr,k)
  res = []
  count = 1
  window_sum = 0.0
  for i in 0...k
    window_sum += arr[i]
    avg = window_sum/count
    res.push(avg.round(2))
    count += 1
  end
  count = k
  for i in k...arr.length
    window_sum += (arr[i] - arr[i-k])
    avg = window_sum/count
    res.push(avg.round(2))
  end
  return res
end

print "Enter data stream: "
arr = gets.chomp.split.map{|x| x.to_i}
print "Enter window size: "
k = gets.chomp.to_i
res = moving_avg(arr,k)
puts "Result: #{res.inspect}"