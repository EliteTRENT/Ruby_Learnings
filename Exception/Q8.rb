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
  begin
    flag = rng.rand(0..1)
    if flag == 0
      raise ConnectionError.new("Connection lost!")
    end
  rescue ConnectionError => e
    puts "#{e.message} Retrying..."
    retry
  end
  if query.downcase != "select" && query.downcase != "insert" && query.downcase != "delete"
    raise DatabaseError.new("Invalid Query: Operation Failed!")
  end
  puts "Changes made to database: #{query} query used"
rescue DatabaseError => e
  puts "Caught a DatabaseError: #{e.message}"
  puts "Enter valid query"
  retry
ensure 
  puts "END OF SESSION"
end