require_relative 'statement_printer'
# Main class
class Account
  attr_reader :balance, :transactions
  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def deposit_amount(amount)
    @balance += amount
    transactions.push(amount)
  end

  def withdraw_amount(amount)
    @balance -= amount
    transactions.push(amount)
  end

  def print_statement()
    statement = StatementPrinter.new(@transactions).print
  end
end
