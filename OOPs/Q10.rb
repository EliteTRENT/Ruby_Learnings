class Product 
  attr_accessor :name,:price,:quantity
  def initialize(name,price,qt)
    @name = name
    @price = price
    @quantity = qt
  end

  def get_discount
    raise NotImplementedError,"Subclasses should have this method"
  end

  def total_price
    return @price*@quantity
  end
end

class ElectronicProduct < Product
  def initialize(name,price,qt,wp)
    super(name,price,qt)
    @warranty_period = wp
  end

  def get_discount
    temp = 0.1*@price
    @price -= temp
  end

  def show_details
    puts "Item's Name: #{@name}"
    puts "Item's Discounted Price: #{@price}"
    puts "Item's Warranty Period: #{@wp}"
  end
end

class ClothingProduct < Product
  def initialize(name,price,qt,size)
    super(name,price,qt)
    @size = size
  end

  def get_discount
    temp = @price/20.0
    @price -= temp
  end

  def show_details
    puts "Item's Name: #{@name}"
    puts "Item's Discounted Price: #{@price}"
    puts "Item's Size: #{@size}"
  end
end

products = [ElectronicProduct.new("PS5",45000,2,3),ClothingProduct.new("Tuxedo",12000,5,"L")]
products.each do |product|
  product.get_discount
  product.show_details
  puts "Total price of #{product.name}: #{product.total_price}"
end
