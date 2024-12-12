class Employee 
  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def display_details
    puts "Name: #{@name}"
    puts "Salary: #{@salary}"
  end
end

class Manager < Employee
  def initialize(name,salary)
    super(name,salary)
  end

  def bonus(employee, amt)
    employee.salary += amt
    puts "Bonus of #{amt} added to #{employee.name}'s account"
  end
end

class Developer < Employee
  attr_accessor :name, :salary
  def initialize(name,salary)
    super(name,salary)
  end

  def increase(percent)
    temp = percent.to_f*@salary/100
    @salary += temp
    puts "#{@name} got an increase of #{percent}% in salary!"
  end
end

manager = Manager.new("Aryan",50000)
developer = Developer.new("Aalekh",2000)
manager.bonus(developer,25000)
developer.increase(2)
manager.display_details
developer.display_details