class Shape
  def area
    raise NotImplementedError
  end
end

class Square < Shape
  def initialize(side)
    @side = side
  end
  
  def area
    puts "Area of square: #{@side*@side}"
  end
end

class Triangle < Shape
  def initialize(base,height)
    @base = base
    @height = height
  end

  def area
    puts "Area of triangle: #{0.5*@base*@height}"
  end
end

shapes = [Triangle.new(10,5),Square.new(6.0),Square.new(3.0)]
shapes.each do |shape|
  shape.area
end