require 'bank'

describe Bank do
  describe '#make_deposit' do
    it 'responds to method #make_deposit' do
      expect(subject).to respond_to(:make_deposit).with(1).argument
    end
    it 'adds the deposited amount to the balance' do
      bank = Bank.new
      subject.make_deposit(100)
      expect(subject.balance).to eq(100)
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
end
