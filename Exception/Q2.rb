class AgeError < StandardError
  def initialize(message)
    super(message)
  end
end

begin 
  print "Enter Age: "
  age = gets.chomp.to_i
  raise AgeError.new("Age should be between 18 and 100") if age < 18 || age > 100
rescue AgeError => e
  puts "Caught an AgeError: #{e.message}"
  retry
ensure
  puts "Your Age: #{age}"
end