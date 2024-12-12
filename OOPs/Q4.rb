class Vehicle 
  def calculate_rent
    raise NotImplementedError, "Subclasses must implement this method"
  end
end

class Car < Vehicle
  def initialize(days)
    @days = days
  end

  def calculate_rent
    puts "Resultant rent of car: $#{@days * 20}"
  end
end

class Bike < Vehicle
  def initialize(days)
    @days = days
  end
  
  def calculate_rent
    puts "Resultant rent of bike: $#{@days * 10}"
  end
end

car = Car.new(10)
bike = Bike.new(5)
car.calculate_rent
bike.calculate_rent