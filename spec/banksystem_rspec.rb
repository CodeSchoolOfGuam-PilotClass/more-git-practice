require_relative '../bank_git'

class BankSystem
  let(:bank_system) {BankSystem.new}

  describe '#initialize' do 
    it 'initializes the list_accounts as an empty array' do 
      expect(bank_system.initialize(list_accounts)).to eq([])
    end
  end


  describe '#add_account' do 
    # it 'adds an account from the bank_account class to the list_accounts array' do 
    #   expect(bank_system.add_account("ls_account"))
    # end
    
    context 'when account is in the list_accounts array' do #context used in if.else functions
      it 'displays a message' do 
        expect(bank_system.add_account("ls_account")).to output("Account already exists")
      end
    end

    context 'when account is NOT in the list_accounts array' do 
      it 'adds the account to the list_accounts array and displays a message' do 
        account.owner


        expect(bank_system.add_account("ls_account")).to output("Account already exists")
      end
    end

  end

end