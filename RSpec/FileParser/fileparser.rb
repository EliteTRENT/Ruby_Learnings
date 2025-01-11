require 'csv'

class FileParser
  class InvalidCSVError < StandardError; end

  def initialize(file_path)
    @file_path = file_path
  end

  def parse
    raise Errno::ENOENT, "File not found" unless File.exist?(@file_path)

    csv_content = CSV.read(@file_path, headers: true)
    raise InvalidCSVError, "Invalid CSV format" if csv_content.headers.nil?

    expected_column_count = csv_content.headers.size
    csv_content.each_with_index do |row, index|
      # Check for malformed CSV
      if row.nil? || row.fields.compact.size != expected_column_count
        raise InvalidCSVError, "Row has inconsistent column count"
      end
    end

    csv_content.map(&:to_h)
  rescue CSV::MalformedCSVError
    raise InvalidCSVError, "Invalid CSV format"
  end
end
