puts "While Loop: "
i = 1
while i <= 5
  puts i
  i += 1
end

puts "For Loop: "
for i in 1..5
  puts i
end

puts "Until Loop: "
i = 1
until i > 5
  puts i
  i += 1
end

puts ".times Method: "
5.times do
  puts "Hello"
end