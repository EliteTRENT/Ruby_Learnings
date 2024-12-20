require_relative "./StringManipulator.rb"

RSpec.describe "StringManipulator" do
  before do
    @string_mani = StringManipulator.new
  end
  describe "#reverse_words" do
    it "reverses the words in a simple sentence" do
      expect(@string_mani.reverse_words("Hello World")).to eq("World Hello")
    end
    it "reverses the words in a sentence with punctuation" do
      expect(@string_mani.reverse_words("Hello, I'm Aryan.")).to eq("Aryan. I'm Hello,")
    end
    it "handles a single word sentence" do
      expect(@string_mani.reverse_words("Hello")).to eq("Hello")
    end
    it "handles an empty string" do
      expect(@string_mani.reverse_words("")).to eq("")
    end
  end

  describe "#capitalize_words" do
    it "capitalizes each word in a simple sentence" do
      expect(@string_mani.capitalize_words("hello world")).to eq("Hello World")
    end
    it "capitalizes each word in a sentence with punctuation" do
      expect(@string_mani.capitalize_words("hello, i'm aryan")).to eq("Hello, I'm Aryan")
    end
    it "capitalizes a single word" do
      expect(@string_mani.capitalize_words("hello")).to eq("Hello")
    end
    it "handles empty string as well" do
      expect(@string_mani.capitalize_words("")).to eq("")
    end
  end
end