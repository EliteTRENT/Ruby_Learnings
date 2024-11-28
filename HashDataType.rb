myHash = Hash.new
myHash["Aryan"] = 7087077804
myHash["Aalekh"] = 7876712040
while true
  op = gets.chomp
  if op == "-1"
    puts "Terminating.."
    exit
  elsif op == "Show"
    puts myHash
  elsif op == "Add" || op == "Update"
    print "Enter key along with value: "
    key,value = gets.chomp.split.map{|x| x.match(/\d/) ? x.to_i : x}    #Input should be a string along with digits in a single line.
    myHash[key] = value
  elsif op == "Delete"
    print "Enter key: "
    key = gets.chomp
    myHash.delete(key)
  elsif op == "Search"
    key = gets.chomp
    puts myHash[key]
  else 
    puts "Wrong Operation"
  end
end
