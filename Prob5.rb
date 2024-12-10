def matchStr(arr,str)
  for i in 0...arr.length
    if arr[i] == str
      return "Found at index #{i}"
    end
  end
  return "-1"
end

print "Enter array of strings: "
arr = gets.chomp.split
print "Enter string to search: "
str = gets.chomp
puts matchStr(arr,str)