# Binary Tree Node Definition
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def level_order(root)
  return [] if root.nil?
  
  result = []
  queue = [root]
  
  while !queue.empty?
    level = []
    size = queue.length
    
    size.times do
      node = queue.shift
      level.push(node.val)
      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    end
    
    result.push(level)
  end
  
  # Print the level order result
  puts "Level Order Traversal: #{result.inspect}"
  result
end

# Sample Tree: [3,9,20,nil,nil,15,7]
root = TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)

level_order(root)