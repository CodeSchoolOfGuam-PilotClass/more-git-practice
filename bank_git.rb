class BankAccount
  attr_accessor :owner, :balance 
  def initialize(owner)
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

ls_account = BankAccount.new("Leon")
p ls_account.deposit(500)
p ls_account.withdraw(300)
# p ls_account 

jf_account = BankAccount.new("Jess")
p jf_account.deposit(600)
p jf_account.withdraw(200)
# p jf_account

np_account = BankAccount.new("Noah")
p np_account.deposit(2)
p np_account.withdraw(2)

ch_account = BankAccount.new("Charles")
p ch_account.deposit(100)
p ch_account.withdraw(1000)

class BankSystem
  attr_accessor :list_accounts

  def initialize
    @list_accounts = [] 
  end
  
  
  def add_account(account) #ls_account
    if @list_accounts.include?(account)
      puts "Account already exists"
    else
     @list_accounts << account 
     puts "Added account for #{account.owner}." ##{ls_account.Leon}
    end
  end
  
  def find_account(owner_name)
    @list_accounts.find { |account| account.owner == owner_name }
  end

  def display_account(owner_name)
    account = find_account(owner_name)
    if account
      puts "Account Owner: #{account.owner}"
      puts "Balance: $#{account.balance}"
    else
      puts "Account not found."
    end
  end

  def display_all 
    # list_accounts
    # account = []
    list_accounts.each do |account|
      puts "Account Owner: #{account.owner}"
      puts "Balance: $#{account.balance}"
    end
  end

end

bank_system = BankSystem.new
bank_system.add_account(ls_account)
bank_system.display_account("Leon")
puts "\n "
bank_system.add_account(jf_account)
puts "\n "
bank_system.add_account(np_account)
puts "\n "
bank_system.add_account(ch_account)
puts "\n "
bank_system.display_all