require 'statement'

describe Statement do
  describe 'Creates statement' do
    it 'prints the header of bank statement' do
      statement = Statement.new
      expect(statement.print_header).to eq("date || credit || debit || balance")
    end
    it 'prints the transactions' do
      bank = Bank.new
      statement = Statement.new
      bank.make_deposit("14/01/2012", 500)
      expect(statement.print_transactions).to eq (10)
      # expect(statement.print_transactions).to eq ("14/01/2012"" ||"" ||"" 500"" ||"" 2500") # or maybe one string and in lib then w%(date....variables to strng)
    end
  end
end
