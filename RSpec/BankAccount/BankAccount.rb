class SomeError < StandardError
  def initialize(msg)
    super(msg)
  end
end

class BankAccount
  def initialize(name,balance)
    @name = name
    @balance = balance
  end

  def deposit(amt)
    @balance += amt
    puts "Amt: #{amt} credited successfully"
    puts "Updated balance: #{@balance}"
  end

  def withdraw(amt)
    if amt <= @balance
      @balance -= amt
      puts "Amt: #{amt} debited successfully"
      puts "Updated balance: #{@balance}"
    else 
      raise SomeError.new("Withdrawl amount cannot be greater than bank balance")
    end
  end

  def show_details
    puts "Name: #{@name}"
    puts "Balance: #{@balance}"
  end
end

begin
  acc = BankAccount.new("Aryan",20000)
  acc.show_details
  acc.deposit(10000)
end
begin
  acc.withdraw(50000)
rescue SomeError => e
  puts "Error: #{e.message}"
end
begin
  acc.withdraw(10000)
  acc.show_details
end
