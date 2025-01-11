require_relative "./fileparser"

RSpec.describe FileParser do
  let(:valid_csv_path) { "valid.csv" }
  let(:empty_csv_path) { "empty.csv" }
  let(:invalid_csv_path) { "invalid.csv" }
  let(:malformed_csv_path) { "malformed.csv" }

  before do
    # Create test CSV files
    File.write(valid_csv_path, "name,age,city\nAlice,30,New York\nBob,25,Los Angeles")
    File.write(empty_csv_path, "")
    File.write(invalid_csv_path, "name,age,city\nAlice,30\nBob,25,Los Angeles")
    File.write(malformed_csv_path, "name,age,city\nAlice,30,New York\nBob,25") # Malformed row
  end

  after do
    # Clean up test files
    File.delete(valid_csv_path) if File.exist?(valid_csv_path)
    File.delete(empty_csv_path) if File.exist?(empty_csv_path)
    File.delete(invalid_csv_path) if File.exist?(invalid_csv_path)
    File.delete(malformed_csv_path) if File.exist?(malformed_csv_path)
  end

  describe "#parse" do
    context "when the file is valid" do
      it "returns an array of hashes representing the CSV content" do
        parser = FileParser.new(valid_csv_path)
        result = parser.parse
        expect(result).to eq([
          { 'name' => 'Alice', 'age' => '30', 'city' => 'New York' },
          { 'name' => 'Bob', 'age' => '25', 'city' => 'Los Angeles' }
        ])
      end
    end

    context "when the file is empty" do
      it "returns an empty array" do
        parser = FileParser.new(empty_csv_path)
        result = parser.parse
        expect(result).to eq([])
      end
    end

    context "when the file is improperly formatted" do
      it "raises an InvalidCSVError for inconsistent column counts" do
        parser = FileParser.new(invalid_csv_path)
        expect { parser.parse }.to raise_error(FileParser::InvalidCSVError, "Row has inconsistent column count")
      end

      it "raises an InvalidCSVError for malformed CSV" do
        parser = FileParser.new(malformed_csv_path)
        expect { parser.parse }.to raise_error(FileParser::InvalidCSVError, "Row has inconsistent column count")
      end
    end

    context "when the file does not exist" do
      it "raises an Errno::ENOENT error" do
        parser = FileParser.new("non_existent_file.csv")
        expect { parser.parse }.to raise_error(Errno::ENOENT, /File not found/)
      end
    end
  end
end
