class Student
  attr_accessor :name, :age
  attr_reader :grades
  def initialize(name, age)
    @name = name
    @age = age
    @grades = []
  end

  def add_grade(marks)
    @grades.push(marks)
    puts "Grades added successfully"
  end 

  def cal_avg
    puts "Avg Grade of #{@name}: #{@grades.sum/@grades.length}"
  end

  def grades
    return @grades.freeze
  end
end

student_01 = Student.new("Aryan", 21)
student_01.add_grade(97)
student_01.add_grade(89)
student_01.cal_avg