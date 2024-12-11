class DatabaseError < StandardError
  def initialize(message)
    super(message)
  end
end

class ConnectionError < StandardError
  def initialize(message)
    super(message)
  end
end

rng = Random.new
begin 
  print "Enter query (select, insert, delete): "
  query = gets.chomp
  flag = rng.rand(0..1)
  if flag == 0
    raise ConnectionError.new("Connection lost!")
  end
  if query.downcase != "select" && query.downcase != "insert" && query.downcase != "delete"
    raise DatabaseError.new("Invalid Query: Operation Failed!")
  end
  puts "Changes made to database: #{query} query used"
rescue ConnectionError => e
  begin
    puts "Caught a ConnectionError: #{e.message}"
    raise DatabaseError.new("Query failed due to connection error")
  rescue DatabaseError => e
    puts "Error: #{e.message}"
  end
rescue DatabaseError => e
  puts "#{e.message}"
  retry
ensure 
  puts "END OF SESSION"
end