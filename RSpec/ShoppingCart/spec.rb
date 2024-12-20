require_relative "./ShoppingCart.rb"

RSpec.describe "ShoppingCart" do
  before do
    @cart = ShoppingCart.new
  end
  describe "#add_item" do
    it "adds an item to the cart" do
      @cart.add_item("item1",20)
      expect(@cart.instance_variable_get(:@items).length).to eq(1)
    end
  end
  describe "#remove_item" do
    it "removes an item from the cart" do
      @cart.add_item("item1",20)
      @cart.remove_item("item1")
      expect(@cart.instance_variable_get(:@items).length).to eq(0)
    end
  end
  describe "#calculate_total_price" do
    context "when there are items less than or equal to 2" do
      it "returns total price of items" do
        @cart.add_item("item1",20)
        @cart.add_item("item2",30)
        expect(@cart.calculate_total_price).to eq(50)
      end
    end
    context "when there are items greater than 2" do
      it "applies 30% discount" do
        @cart.add_item("item1",100)
        @cart.add_item("item2",200)
        @cart.add_item("item3",300)
        expect(@cart.calculate_total_price).to eq(420)
      end
    end
  end
end