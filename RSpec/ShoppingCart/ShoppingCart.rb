class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(name, price)
    @items.push({ name: name, price: price })
  end

  def remove_item(name)
    @items.each do |item|
      if item[:name] == name
        @items.delete(item)
        break
      end
    end
  end

  def calculate_total_price
    total = 0
    @items.each { |item| total += item[:price] }
    if @items.length > 2
      total *= 0.7
    end
    return total
  end
end

cart = ShoppingCart.new
cart.add_item("XBox",50000)
cart.add_item("Tuxedo",25000)
cart.add_item("IPhone 15",70000)
cart.add_item("Punjabi Tadka",120)
cart.remove_item("Tuxedo")
puts "Price to pay: #{cart.calculate_total_price}"