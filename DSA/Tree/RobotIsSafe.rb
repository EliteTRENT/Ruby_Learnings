def checkSafe(robot_x,robot_y,rows,cols)
  if robot_x < 0  || robot_y < 0 || robot_x > rows || robot_y > cols
    return false
  end
  return true
end



def robotSafeOrNot(matrix,string)
  rows = matrix.length-1
  cols = matrix[0].length-1
  robot_x = matrix.length-1
  robot_y = matrix[0].length-1

  string.each_char do |char|
    if char == 'L'
      robot_y -= 1
      if !checkSafe(robot_x,robot_y,rows,cols)
        return nil
      end
    elsif char == 'R'
      robot_y += 1
      if !checkSafe(robot_x,robot_y,rows,cols)
        return nil
      end
    elsif  char == 'U'
      robot_x -= 1
      if !checkSafe(robot_x,robot_y,rows,cols)
        return nil
      end
    else
      robot_x += 1
      if !checkSafe(robot_x,robot_y,rows,cols)
        return nil
      end
    end
  end
  return [robot_x,robot_y]
end

print "Enter the number of rows :- "
rows = gets.chomp.to_i

matrix = []

rows.times do 
  row = gets.chomp.split.map{|num| num.to_i}
  matrix << row
end


coordinates =   
if coordinates == nil
  puts "Robot not safe"
else
  puts "Robot is safe and is at #{coordinates}"
end