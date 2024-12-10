catch(:outer) do
  print "Enter array of names: "
  arr = gets.chomp.split
  print "Enter name to search: "
  req = gets.chomp
  for i in 0...arr.length
    if arr[i] == req
      puts "Name was found at index #{i}"
      throw(:outer)
    end
  end
end