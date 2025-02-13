require_relative '../bank_git'

RSpec.describe BankSystem do
  let(:bank_system) {BankSystem.new}
  let (:ls_account) {BankAccount.new("Leon")}


  describe '#initialize' do 
    it 'initializes the list_accounts as an empty array' do 
      expect(bank_system.list_accounts).to eq([])
    end
  end


  # describe '#add_account' do 
    # it 'adds an account from the bank_account class to the list_accounts array' do 
    #   expect(bank_system.add_account("ls_account"))
    # end
    
    # context 'when account is in the list_accounts array' do #context used in if.else functions
    #   it 'displays a message' do 
    #     ls_account = BankAccount.new("Leon")
    #     expect { bank_system.add_account(ls_account) } .to output("Account already exists").to_stdout expect(bank_system.list_accounts).to eq([ls_account])
    #   end
    # end

    # context 'when account is NOT in the list_accounts array' do 
    #   it 'adds the account to the list_accounts array and displays a message' do 
    #     account.owner

  describe '#add_account' do
    context 'when the account already exists in list_accounts' do
      it 'returns "Account already exists"' do
        # First, add the account
        bank_system.add_account(ls_account)
        # Try adding the same account again
        result = bank_system.add_account(ls_account)
        expect(result).to eq("Account already exists")
      end
    end

    context 'when the account is NOT in list_accounts' do
      it 'adds the account and returns a success message' do
        result = bank_system.add_account(ls_account)
        expect(result).to eq("Added account for Leon.")
        expect(bank_system.list_accounts).to include(ls_account)
      end
    end
  end               

end