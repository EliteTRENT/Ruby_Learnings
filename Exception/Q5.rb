class InvalidEmailError < StandardError
  def initialize(message)
    super(message)
  end
end

def validate_email(input)
  pattern = /^[a-zA-Z0-9._+%]+@[a-zA-Z0-9._]+\.[a-zA-Z]{2,}$/
  if input.match?(pattern)
    puts "Valid Mail: #{input}"
  else 
    raise InvalidEmailError.new("Invalid Mail Format")
  end
end

begin 
  print "Enter email: "
  email = gets.chomp
  puts validate_email(email)
rescue InvalidEmailError => e
  puts "Error: #{e.message}"
  puts "Enter valid email"
  retry
ensure
  puts "Operation Complete!"
end