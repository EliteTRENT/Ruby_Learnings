require "thread"

queue = Queue.new
while true
  puts "Choose an option"
  print "1->Enqueue, 2->Dequeue, 3->Show, 4->isEmpty, 5->Size, 6->EXIT: "
  n = gets.chomp.to_i
  if n == 1
    print "Enter a digit: "
    ele = gets.chomp.to_i
    queue << ele
  elsif n == 2
    if queue.empty?
      puts "Queue is empty, nothing to dequeue"
    else
      popped = queue.pop
      puts "Element Removed: #{popped}"
    end
  elsif n == 3
    if queue.empty?
      puts "Queue is empty, nothing to print"
    else
      temp = []
      until queue.empty?
        temp << queue.pop
      end
      print "Queue's Content: "
      puts temp.join(" ")
      temp.each do |ele|
        queue << ele
      end
    end
  elsif n == 4
    puts "Is queue empty? #{queue.empty?}"
  elsif n == 5
    puts "Size: #{queue.size}"
  elsif n == 6
    break
  else 
    puts "Enter valid input"
  end
end



