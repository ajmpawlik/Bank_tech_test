class Bank
  attr_reader :balance
  def initialize
    @balance = 0
  end
  def make_deposit(amount_deposited)
    @balance = @balance + amount_deposited
  end
end
