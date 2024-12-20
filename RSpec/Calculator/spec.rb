require_relative './Calculator.rb'

RSpec.describe 'Calculator' do
  describe '#add' do
    it 'returns the sum of two numbers' do
      expect(add(2, 3)).to eq(5)
    end
  end

  describe '#subtract' do
    it 'returns the difference of two numbers' do
      expect(subtract(7, 3)).to eq(4)
    end
  end

  describe '#multiply' do
    it 'returns the product of two numbers' do
      expect(multiply(4, 5)).to eq(20)
    end
  end

  describe '#divide' do
    it 'returns the quotient of two numbers' do
      expect(divide(10, 2)).to eq(5)
    end

    it 'raises an error when dividing by zero' do
      expect { divide(10, 0) }.to raise_error(ZeroDivisionError)
    end
  end
end
