print "Enter array elements seperated by space: "
arr = gets.chomp.split.map{|x| x.to_i}
last_ind = arr.length-1
for i in last_ind.downto(0)
  for j in 0...i
    if arr[j] == arr[i]
      arr.delete_at(i)
      break
    end
  end
end
print arr
