str = gets.chomp
i = 0
j = str.length-1
while i < j
  temp = str[i]
  str[i] = str[j]
  str[j] = temp
  i += 1
  j -= 1
end
puts str