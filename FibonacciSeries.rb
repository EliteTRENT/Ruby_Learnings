print "Enter number of terms for fibonacci sequence: "
n = gets.chomp.to_i
if n == 0
  exit
end
print "Fibonacci Series: "
if n == 1
  puts 0
  exit
elsif n == 2
  puts "0 1"
  exit
end
print "0 1 "
a,b = 0,1
n -= 2
while n > 0
  c = a+b
  print "#{c} "
  a,b = b,c
  n -= 1
end

