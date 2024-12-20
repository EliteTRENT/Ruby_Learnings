class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def add_at_head(ele)
    new_node = Node.new(ele)
    new_node.next = @head
    @head = new_node
  end

  def add_at_tail(ele)
    new_node = Node.new(ele)
    if @head.nil?
      @head = new_node
      return
    end
    current = @head
    while current.next 
      current = current.next
    end
    current.next = new_node
  end

  def delete_by_value(val)
    if @head.nil?
      puts "List is empty, can't search for #{val}"
      return
    end
    if @head.data == val
      @head = @head.next
      return
    end
    current = @head
    while current.next && current.next.data != val
      current = current.next
    end
    if current.next
      current.next = current.next.next
    else
      puts "Value not found"
    end
  end

  def length
    len = 0
    current = @head
    while current != nil
      len += 1
      current = current.next
    end
    puts "Length: #{len}"
  end

  def search(ele)
    ind = 0
    current = @head
    while current != nil && current.data != ele
      current = current.next
      ind += 1
    end
    if current == nil
      puts "Couldn't find #{ele}"
    else
      puts "Element #{ele} is at #{ind} index"
    end
  end

  def reverse
    current = @head
    prev = nil
    while current != nil
      next_node = current.next
      current.next = prev
      prev = current
      current = next_node
    end
    @head = prev
  end

  def display 
    current = @head
    if current.nil?
      puts "List is empty"
      return
    end
    while current != nil
      print "#{current.data}->" if current.next != nil
      print "#{current.data}" if current.next == nil
      current = current.next
    end
    puts
  end
end

list = LinkedList.new

list.display
list.add_at_head(10)
list.delete_by_value(10)
list.add_at_head(20)
list.add_at_tail(30)
list.add_at_tail(40)
list.add_at_head(50)
list.add_at_head(60)
list.display
list.delete_by_value(30)
list.display
list.length
list.search(100)
list.search(40)
list.reverse
list.display