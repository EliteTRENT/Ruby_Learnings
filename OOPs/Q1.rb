class BankAccount
  def initialize(balance)
    @balance = balance
  end

  def deposit(amt)
    @balance += amt
    puts "Money Credited: #{amt}"
  end

  def withdraw(amt)
    if amt <= @balance
      @balance -= amt
      puts "Money Debited: #{amt}"
    else 
      puts "Not enough balance"
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