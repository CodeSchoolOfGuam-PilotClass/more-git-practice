class BankAccount

  attr_accessor :owner, :balance, 
  def initialize (owner)
      @owner = owner
      @balance = 0
  end

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

savings001 = BankAccount.new("Leon")
p savings001.deposit(500)
p savings001.withdraw(300)
# p savings001.withdraw(1000)
# p savings001

class BankSystem
  attr_accessor :owner, :bank_account

  def initialize(owner)
    @owner = owner
    @balance = owner.balance
    @bank_accounts = [] #[savings001 = BankAccount.new("Leon")]
  end
  # Public method: anyone can call these
  
  def display_account
    puts "Account owner: #{@owner.owner}"
    return "Balance: #{@owner.balance}"
  end
  
  def open
    if @bank_accounts.include?(owner)
      return "Account already exist #{account}"
    else
      @bank_accounts << account
      # account.open(self)
      return "Account open. #{bank_accounts}"
    end
  end

  # def close(account)
  #   if @bank_accounts.include?(account)
  #     @bank_accounts.delete(account)
  #     puts "Account closed"
  #   else
  #    puts "Account doesn't exist."
  #   end
  # end
end

# leonshimizu = BankAccount.new("Leon")
# puts leonshimizu.open("savings001")
# p leonshimizu.deposit(500)
# p @bank_accounts
# puts leonshimizu.display_account
# puts leonshimizu.close("savings001")

test = BankSystem.new(savings001)
puts test.display_account