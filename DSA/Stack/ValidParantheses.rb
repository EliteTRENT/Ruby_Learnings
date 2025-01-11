def valid_parantheses(str)
  stack = []
  for i in 0...str.length
    if str[i] == "{" || str[i] == "[" || str[i] == "("
      stack << str[i]
    elsif (str[i] == "}" && stack[-1] == "{") || (str[i] == "]" && stack[-1] == "[") || (str[i] == ")" && stack[-1] == "(")
      stack.pop
    else 
      return false
    end
  end
  if stack.empty?
    return true
  else 
    return false
  end
end

print "Enter sequence: "
str = gets.chomp
if valid_parantheses(str)
  puts "Sequence is valid"
else 
  puts "Sequence is invalid"
end
