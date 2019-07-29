class Bank
  attr_reader :balance, :account
  def initialize
    @balance = 0
    @account
  end

  def make_deposit(amount_deposited)
    @balance = @balance + amount_deposited
  end

  def make_withdrawal(amount_withdrawed)
    @balance = @balance - amount_withdrawed
  end
end
