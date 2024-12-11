class RuntimeError < StandardError
  def initialize(message)
    super(message)
  end
end
i = 1
begin 
  rng = Random.new
  number = rng.rand(1..3)
  if number != 1
    raise RuntimeError.new("Couldn't connect to the server")
  else 
    puts "CONNECTED TO SERVER!"
  end
rescue RuntimeError => e
  puts "Error: #{e.message}"
  if i <= 3
    puts "Trying again.."
    i += 1
    retry
  else
    puts "Connection Failed"
    exit
  end
end

