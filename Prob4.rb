begin 
  print "Enter dividend and divisor: "
  num,div = gets.chomp.split.map{|x| x.to_i}
  result = num/div
  puts "RESULT: #{result}"
rescue ZeroDivisionError => e
  puts "ERROR: #{e.message}"
  retry
ensure
  puts "Operation Done."
end