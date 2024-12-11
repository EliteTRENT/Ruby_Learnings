begin 
  print "Enter file path: "
  path = gets.chomp
  file = File.open(path,"w+")
  print "Enter two numbers separated by space: "
  a,b = gets.chomp.split.map{|x| x.to_i}
  result = a/b
  file.write("Division (#{a}&#{b}): #{result}")
rescue Errno::EACCES => e
  puts "Error: #{e.message}"
rescue ZeroDivisionError => e
  puts "Caught a ZeroDivisionError: #{e.message}"
ensure 
  file.close if file
  puts "Operation Complete!"
end