class InsufficientBalance < StandardError
  def initialize(message)
    super(message)
  end
end

class BankAccount
  def initialize(balance)
    @balance = balance
  end

  def deposit(amt)
    @balance += amt
    puts "Money Credited: #{amt}"
  end

  def withdraw(amt)
    begin
      if amt > @balance
        raise InsufficientBalance.new("Trying to debit amount greater than the current balance!")
      else 
        @balance -= amt
        puts "Money Debited: #{amt}"
      end
    rescue InsufficientBalance => e
      puts "Error: #{e.message}"
    end
  end

  def show_balance
    puts "Current Balance: #{@balance}"
  end
end

acc = BankAccount.new(1000)
acc.deposit(1000)
acc.withdraw(3000)
acc.show_balance
acc.withdraw(1500)
acc.show_balance