begin 
  print "Enter two numbers separated by space: "
  a,b = gets.chomp.split
  a = Integer(a)
  b = Integer(b)
  result = a/b
  puts "Result: #{result}"
rescue ArgumentError => e
  puts "Caught an Argument Error: #{e.message}"
  retry
rescue ZeroDivisionError => e
  puts "Caught a ZeroDivisionError: #{e.message}"
  retry
ensure
  puts "Operation Completed!"
end