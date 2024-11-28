  str = gets.chomp
  i = 0
  j = str.length - 1
  while i < j
    if str[i] != str[j]
      puts "Not a palindrome string"
      exit
    end
    i = i+1
    j = j-1
  end
  puts "It is a palindrome string"