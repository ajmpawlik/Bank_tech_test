require 'bank'

describe Bank do
  it 'responds to method #make_deposit' do
    expect(subject).to respond_to :make_deposit
  end
  it 'responds to method #balance' do
    expect(subject).to respond_to :balance
  end
  it 'shows the balance of the account' do
    expect(subject.balance).to eq 0
  end
end
