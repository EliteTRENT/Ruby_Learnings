begin 
  print "Enter num: "
  num = gets.chomp
  num = Integer(num)
  if num < 0
    raise RangeError, "Can't evaluate negative numbers"
  end
  result = Math.sqrt(num)
rescue ArgumentError => e
  puts "Caught an ArgumentError: #{e.message}"
  puts "Enter valid input"
  retry
rescue RangeError => e
  puts "Caught an unexpected error: #{e.message}"
  retry
ensure 
  puts "Result: #{result}"
end


