catch(:outer) do
  print "Enter array of names: "
  arr = gets.chomp.split
  print "Enter name to search: "
  name = gets.chomp
  for i in 0...arr.length
    if arr[i] == name
      puts "Name was found at index #{i}"
      throw(:outer)
    end
  end
end