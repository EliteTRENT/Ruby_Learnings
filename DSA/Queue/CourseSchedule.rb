
def can_finish(num_courses, prerequisites)
  graph = Array.new(num_courses) { [] }
  in_degree = Array.new(num_courses, 0)
  
  prerequisites.each do |course, prereq|
    graph[prereq] << course
    in_degree[course] += 1
  end
  
  queue = []
  num_courses.times { |i| queue.push(i) if in_degree[i] == 0 }
  
  order = []
  
  while !queue.empty?
    course = queue.shift
    order.push(course)
    
    graph[course].each do |next_course|
      in_degree[next_course] -= 1
      queue.push(next_course) if in_degree[next_course] == 0
    end
  end
  
  if order.length == num_courses
    puts "Courses can be finished. Order of courses: #{order.inspect}"
    return true
  else
    puts "Courses cannot be finished."
    return false
  end
end

# Sample Input: numCourses = 2, prerequisites = [[1,0]]
num_courses = 2
prerequisites = [[1,0]]

can_finish(num_courses, prerequisites)