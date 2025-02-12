class BankAccount
  def initialize(owner, balance)
    @owner = owner
    @balance = balance
  end
  # Public method: anyone can call these
  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if sufficient_funds?(amount)
      @balance -= amount
    else
      puts "Insufficient funds!"
    end
  end
  private
  # Private method: only the class itself can call this
  def sufficient_funds?(amount)
    amount <= @balance
  end
end

bankAccount = BankAccount.new("Leon", 100)
puts bankAccount.withdraw(50)
puts bankAccount.deposit(100)

#hello