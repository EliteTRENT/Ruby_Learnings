loop do
  print "Enter integer between 1 and 10: "
  n = gets.chomp.to_i
  if n >= 1 && n <= 10
    puts "You entered: #{n}"
    exit
  else 
    redo
  end
end