def num_islands(grid)
  return 0 if grid.empty?
  
  rows = grid.length
  cols = grid[0].length
  island_count = 0
  
  # Helper function for DFS traversal
  def dfs(grid, row, col, rows, cols)
    return if row < 0 || col < 0 || row >= rows || col >= cols || grid[row][col] == '0'
    
    grid[row][col] = '0' # Mark the land as visited
    
    # Traverse in all four directions
    dfs(grid, row + 1, col, rows, cols)
    dfs(grid, row - 1, col, rows, cols)
    dfs(grid, row, col + 1, rows, cols)
    dfs(grid, row, col - 1, rows, cols)
  end
  
  rows.times do |i|
    cols.times do |j|
      if grid[i][j] == '1' # Found an unvisited land
        island_count += 1
        dfs(grid, i, j, rows, cols)
      end
    end
  end
  
  # Print the island count
  puts "Number of Islands: #{island_count}"
  island_count
end

# Sample Grid: 2D array representing the grid
grid = [
  ['1', '1', '1', '1', '0'],
  ['1', '1', '0', '1', '0'],
  ['1', '1', '0', '0', '0'],
  ['0', '0', '0', '0', '0']
]

num_islands(grid)