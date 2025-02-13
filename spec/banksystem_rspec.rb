require_relative '../bank_git'

class BankSystem
  let(:bank_system) {BankSystem.new}

  describe '#initialize' do 
    it 'initializes the list_accounts as an empty array' do 
      expect(bank_system.initialize(list_accounts)).to eq([])
    end
  end

  describe '#initialize' do 
    it 'initializes the list_accounts as an empty array' do 
      expect(bank_system.initialize(list_accounts)).to eq([])
    end
  end
  
end