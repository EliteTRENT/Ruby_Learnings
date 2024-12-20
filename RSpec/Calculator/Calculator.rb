def add(a,b)
  return a+b
end

def subtract(a,b)
  return a-b
end 

def multiply(a,b)
  return a*b
end

def divide(a,b)
  raise ZeroDivisionError, "Division by zero is not allowed" if b == 0
  return a/b
end

begin
  puts add(5,5)
end
begin
  puts divide(10,0)
rescue ZeroDivisionError => e
  puts "Error: #{e.message}"
end
begin
  puts multiply(2,7)
end
begin
  puts subtract(20,10)
end
