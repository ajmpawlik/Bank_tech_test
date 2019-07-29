require 'bank'

describe Bank do
  it 'responds to method #make_deposit' do
    expect(subject).to respond_to :make_deposit
  end
end
