require 'bank'

describe Bank do
  describe '#make_deposit' do
    it 'responds to method #make_deposit' do
      expect(subject).to respond_to(:make_deposit).with(2).arguments
    end
    it 'adds the deposited amount to the balance at the date' do
      bank = Bank.new
      bank.make_deposit("14/01/2012", 100)
      expect(bank.make_deposit("13/01/2012", 200)).to eq([{"date" => "14/01/2012", "deposit"=>100, "balance"=>100}, {"date"=>"13/01/2012", "deposit"=>200, "balance"=>300}])
      expect(bank.balance).to eq(300)
    end
  end
  describe 'make_withdrawal' do
    it 'responds to method #make_withdrawal' do
      expect(subject).to respond_to(:make_withdrawal).with(2).arguments
    end
    it 'deducts the withdrawn amount from the balance' do
      bank = Bank.new
      bank.make_deposit("14/01/2012", 100)
      bank.make_deposit("13/01/2012", 200)
      expect(bank.make_withdrawal("15/01/2012", 50)).to eq([{"date" => "14/01/2012", "deposit"=>100, "balance"=>100}, {"date"=>"13/01/2012", "deposit"=>200, "balance"=>300}, {"date"=>"15/01/2012", "debit" => 50, "balance"=>250}])
      expect(bank.balance).to eq(250)
    end
  end
  describe '#balance' do
    it 'responds to method #balance' do
      expect(subject).to respond_to :balance
    end
    it 'shows the balance of the account' do
      bank = Bank.new
      initial_balance = bank.balance
      expect(subject.balance).to eq initial_balance
    end
  end
  describe '#account' do
    it 'responds to method #account' do
      expect(subject).to respond_to :account
    end
    it 'shows the account after the deposit has been made' do
      bank = Bank.new
      bank.make_deposit("14/01/2012", 100)
      expect(bank.account).to eq([{"date" => "14/01/2012", "deposit"=>100, "balance"=>100}])
    end
  end
  describe '#transaction' do
    it 'responds to the method #transaction' do
      expect(subject).to respond_to :transaction
    end
  end
  describe '#print statement' do
    it 'prints a bank statement' do
     expect(subject).to respond_to :print_statement
    end
  end
end
