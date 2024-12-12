class Shape
  def area
    raise NotImplementedError, "Subclasses must implement this method"
  end
end

class Circle < Shape
  def initialize(radius)
    @radius = radius
  end

  def area
    puts "Area of circle: #{22.0/7*@radius*@radius}"
  end
end

class Rectangle < Shape
  def initialize(length, width)
    @length = length
    @width = width
  end

  def area
    puts "Area of rectangle: #{@length*@width}"
  end
end

circle = Circle.new(6)
circle.area
rectangle = Rectangle.new(10,20)
rectangle.area
