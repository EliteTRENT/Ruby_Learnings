def cal(num1, num2, op)
  if op == "+"
    return num1+num2
  elsif op == "-"
    return num1-num2
  elsif op == "*"
    return num1*num2
  elsif op == "/"
    return num1/num2
  elsif op == "%"
    return num1%num2
  elsif op == "**"
    return num1**num2
  end
end

print "Enter a number: "
num1 = gets.chomp.to_i
print "Enter another number: "
num2 = gets.chomp.to_i
print "Choose any operator [+ - * / % **]: "
char = gets.chomp
puts "Calculated Value: #{cal(num1,num2,char)}"