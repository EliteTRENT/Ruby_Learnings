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

  def bonus(amt)
    @salary += amt
    puts "Manager #{@name} got a bonus of #{amt}!"
  end
end

class Developer < Employee
  def initialize(name,salary)
    super(name,salary)
  end

  def increase(percent)
    temp = percent.to_f*@salary/100
    @salary += temp
    puts "Developer #{@name} an increase of #{percent}% in salary!"
  end
end

manager = Manager.new("Aryan",50000)
developer = Developer.new("Aalekh",2000)
manager.bonus(25000)
developer.increase(2)
manager.display_details
developer.display_details