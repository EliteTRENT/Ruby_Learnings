stack = []
while true
  puts "Choose an option"
  print "1->Push, 2->Pop, 3->Peek, 4->isEmpty, 5->Size, 6->Display, 7->EXIT: "
  n = gets.chomp.to_i
  case n
  when 1
    print "Enter element: "
    ele = gets.chomp.to_i
    stack << ele
  when 2
    if stack.empty?
      puts "Stack is empty, nothing to pop"
    else
      popped_ele = stack.pop
      print "Popped Element: #{popped_ele}"
      puts 
    end
  when 3
    if stack.empty?
      puts "Stack is empty, nothing to peek"
    else
      puts "Top Element: #{stack[-1]}"
    end
  when 4
    puts "Is stack empty? #{stack.empty?}"
  when 5
    puts "Size: #{stack.length}"
  when 6
    if stack.empty?
      puts "Stack is empty, nothing to print"
    else
      puts "Stack's Content: "
      for i in (stack.length-1).downto(0)
        print "#{stack[i]} "
      end
      puts
    end
  when 7
    break
  end
end
