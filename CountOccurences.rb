print "Enter string: "
str = gets.chomp
print "Enter character: "
ch = gets.chomp
count = 0
for i in 0..(str.length-1)
  if str[i] == ch
    count += 1
  end
end
puts "The character '#{ch}' occured #{count} times."