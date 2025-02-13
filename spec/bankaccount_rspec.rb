require_relative '../bank_git'

RSpec.describe BankAccount do
  let(:ls_account) {BankAccount.new("Leon")}

  describe '#initialize' do
    it 'initializes the account owner and balance' do
      expect(ls_account.owner).to eq("Leon")
    end 
  end 

  describe '#deposit' do 
    it 'deposits the amount to the balance' do 
      expect(ls_account.deposit(500)).to eq(500)
    end 
  end 

  describe '#withdraw' do 
    # it 'withdraws the anount from the balance' do 
    #   expect(ls_account.withdraw(300)).to eq(300)
    # end 
    context 'if sufficient funds withdraw from balance'
  end 
end  