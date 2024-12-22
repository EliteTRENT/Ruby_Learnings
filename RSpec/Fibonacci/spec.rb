require_relative './Fibonacci'

RSpec.describe 'fibonacci' do
  describe 'when n is 0' do
    it 'returns an empty array' do
      expect(fibonacci(0)).to eq([])
    end
  end

  describe 'when n is 1' do
    it 'returns an array with the first Fibonacci number [0]' do
      expect(fibonacci(1)).to eq([0])
    end
  end

  describe 'when n is 2' do
    it 'returns the first two Fibonacci numbers [0, 1]' do
      expect(fibonacci(2)).to eq([0, 1])
    end
  end

  describe 'when n is 5' do
    it 'returns the first five Fibonacci numbers [0, 1, 1, 2, 3]' do
      expect(fibonacci(5)).to eq([0, 1, 1, 2, 3])
    end
  end

  describe 'when n is a large number' do
    it 'returns the correct Fibonacci sequence for large n' do
      result = fibonacci(20)
      expect(result.length).to eq(20)
      expect(result[-1]).to eq(4181)
    end
  end
end
