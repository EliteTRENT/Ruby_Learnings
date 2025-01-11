def eval(str)
  arr = str.split
  stack = []
  arr.each do |ele|
    if ele.match?(/^-?\d+$/)
      stack << ele.to_i
    else 
      a = stack[-1]
      b = stack[-2]
      if a == nil || b == nil
        return "Invalid Postfix Notation"
      end
      case ele
      when "+"
        temp = b+a
        stack << temp
      when "-"
        temp = b-a
        stack << temp
      when "*"
        temp = b*a
        stack << temp
      when "/"
        temp = b/a
        stack << temp
      end
    end
  end
  return stack[-1]
end

print "Enter sequence: "
str = gets.chomp
res = eval(str)
puts "Result: #{res}"

# Reverse Polish Notation is postfix notation