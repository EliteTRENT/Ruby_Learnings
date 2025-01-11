class Node

  attr_accessor :data , :left , :right

  def initialize(data)
    @data = data
    @left = nil 
    @right = nil
  end

end

def lowest_common_ancestor(root,node1,node2)
  if root == nil || root == node1 || root == node2
    return root 
  end 
  left = lowest_common_ancestor(root.left,node1,node2)
  right = lowest_common_ancestor(root.right,node1,node2)

  if left == nil
    return right
  elsif right == nil
    return left
  else
    return root
  end
end


first_node = Node.new(1)
second_node = Node.new(2)
third_node = Node.new(3)
fourth_node = Node.new(4)
fifth_node = Node.new(5)
sixth_node = Node.new(6)
seventh_node = Node.new(7)
eighth_node = Node.new(8)
ninth_node = Node.new(9)

first_node.left = second_node
first_node.right = third_node
second_node.left = fourth_node
second_node.right = fifth_node
third_node.left = eighth_node
third_node.right = ninth_node
fifth_node.left = sixth_node
fifth_node.right = seventh_node

lca = lowest_common_ancestor(first_node,sixth_node,seventh_node)

if lca.nil?
  puts "No common ancestor found."
else
  puts "Lowest Common Ancestor: #{lca.data}"
end