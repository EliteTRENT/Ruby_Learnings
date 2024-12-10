arr = [23,12,32,2,40,23,70,53,4,56]
print "Elements processed: "
for i in 0...arr.length
  if arr[i] % 7 == 0
    break
  end
  print "#{arr[i]} "
end