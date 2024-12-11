class CustomError < StandardError
  def initialize(message)
    super(message)
  end
end

def fetch_data
  raise CustomError.new("Something unexpected occured")
end

def process_data
  begin
    fetch_data
  rescue CustomError => e
    puts "Exception was raised in some other method"
  end
end

process_data