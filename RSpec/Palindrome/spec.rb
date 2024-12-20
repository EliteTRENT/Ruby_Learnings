require_relative "./PalindromeString.rb"

RSpec.describe "Palindrome" do
  describe "#palindrome" do
    it "returns true if it is a palindrome string" do
      expect(palindrome("livil")).to eq(true)
    end

    it "returns false if it is not a palindrome string" do
      expect(palindrome("ok")).to eq(false)
    end

    it "returns true for empty strings" do
      expect(palindrome("")).to eq(true)
    end

    it "returns true for single charactered strings" do
      expect(palindrome("a")).to eq(true)
    end
  end
end