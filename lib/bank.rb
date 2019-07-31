# require_relative 'statement'

class Bank
  attr_reader :balance, :account, :transaction
  def initialize
    @balance = 0
    @account = []
    @transaction = {}
  end

  def make_deposit(date, amount_deposited)
    @balance = @balance + amount_deposited
    @transaction = Hash.new
    @transaction["date"] = date
    @transaction["deposit"] = amount_deposited
    @transaction["balance"] = @balance
    @account.push(@transaction)
  end

  def make_withdrawal(date, amount_withdrawed)
    fail 'Insufficient funds' if @balance <= amount_withdrawed
    @balance = @balance - amount_withdrawed
    @transaction = Hash.new
    @transaction["date"] = date
    @transaction["debit"] = amount_withdrawed
    @transaction["balance"] = @balance
    @account.push(@transaction)
  end

  def print_header
    "date || credit || debit || balance"
  end

  def print_statement

  end
end
