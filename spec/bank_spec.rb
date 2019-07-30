require 'bank'

describe Bank do
  describe '#make_deposit' do
    it 'responds to method #make_deposit' do
      expect(subject).to respond_to(:make_deposit).with(1).argument
    end
    it 'adds the deposited amount to the balance' do
      bank = Bank.new
      subject.make_deposit(100)
      subject.make_deposit(200)
      expect(subject.balance).to eq(300)
    end
  end
  describe 'make_withdrawal' do
    it 'responds to method #make_withdrawal' do
      expect(subject).to respond_to(:make_withdrawal).with(1).argument
    end
    it 'deducts the withdrawn amount from the balance' do
      bank = Bank.new
      subject.make_deposit(100)
      subject.make_deposit(200)
      subject.make_withdrawal(50)
      expect(subject.balance).to eq(250)
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
    it 'shows the account' do
      expect(subject.account).to eq([{"balance" => 100}])
    end
  end
  describe '#transaction' do
    it 'responds to the method #transaction' do
      expect(subject).to respond_to :transaction  
    end
  end
end
