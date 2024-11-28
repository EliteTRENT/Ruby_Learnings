num = gets.chomp.to_i
if num == 0 || num == 1
  puts "Not a prime number"
end

for i in 2..(num-1)
  if num % i == 0
    puts "Not a prime number"
    exit
  end
end
puts "It is a prime number"
  