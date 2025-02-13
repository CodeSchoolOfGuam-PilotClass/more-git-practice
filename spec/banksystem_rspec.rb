require_relative '../bank_git'

RSpec.describe BankSystem do
  let(:bank_system) {BankSystem.new}
  # let (:ls_account) {BankAccount.new("Leon")}


  describe '#initialize' do 
    it 'initializes the list_accounts as an empty array' do 
      expect(bank_system.list_accounts).to eq([])
    end
  end


  describe '#add_account' do 
    # it 'adds an account from the bank_account class to the list_accounts array' do 
    #   expect(bank_system.add_account("ls_account"))
    # end
    
    context 'when account is in the list_accounts array' do #context used in if.else functions
      it 'displays a message' do 
        ls_account = BankAccount.new("Leon")
        expect { bank_system.add_account(ls_account) } .to output("Account already exists").to_stdout
        expect(bank_system.add_account).to_not include('The Great Gatsby')
      end
    end

    # context 'when account is NOT in the list_accounts array' do 
    #   it 'adds the account to the list_accounts array and displays a message' do 
    #     account.owner

   #   describe '#fetch_books_from_api' do
#       context 'when the book is in the library' do
#           it 'removes the book from the library and displays a message' do
#               library.library << 'The Great Gatsby'
#               expect { library.fetch_books_from_api('The Great Gatsby') }
#                   .to output("Enjoy your book #{member}!\n").to_stdout
#               expect(library.library).to_not include('The Great Gatsby')
#           end
#       end

#       context 'when the book is not in the library' do
#           it 'displays a book not found message' do
#               expect { library.fetch_books_from_api('Moby Dick') }
#                   .to output("Book not found within library.\n").to_stdout
#               expect(library.library).to eq([ls_account])
#           end
#       end
#   end
# end
    

    #     expect(bank_system.add_account("ls_account")).to output("Account already exists")
    #   end
    # end

  end

end