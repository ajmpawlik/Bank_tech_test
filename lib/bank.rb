class Bank
  attr_reader :balance, :account, :transaction
  def initialize
    @balance = 0
    @account = []
    @transaction = {}
  end

  def make_deposit(amount_deposited)
    @balance = @balance + amount_deposited
    @account.push(@transaction[:deposit] = amount_deposited)
    p @account
  end

  def make_withdrawal(amount_withdrawed)
    @balance = @balance - amount_withdrawed
  end
end
