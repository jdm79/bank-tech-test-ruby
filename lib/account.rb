require_relative 'statement_printer'
# Main class
class Account
  attr_reader :balance, :transactions
  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def deposit_amount(amount, date = Date.new.current_date)
    @balance += amount
    details = { date: date, credit: amount, debit: 0, balance: @balance }
    transactions.push(details)
  end

  def withdraw_amount(amount, date = Date.new.current_date)
    @balance -= amount
    details = { date: date, credit: 0, debit: amount, balance: @balance }
    transactions.push(amount)
  end

  def print_statement()
    statement = StatementPrinter.new(@transactions).print
  end
end
