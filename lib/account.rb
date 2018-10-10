require_relative 'statement_printer'
require_relative 'transaction'
require_relative 'transaction_history'
require_relative 'date'
# Main class
class Account
  attr_reader :balance, :transactions
  def initialize(balance = 0)
    @balance = balance
    @transactions = TransactionHistory.new
  end

  def deposit_amount(amount, date = Date.new.current_date)
    @balance += amount
    details = { date: date, credit: amount, debit: 0, balance: @balance }
    update_history(Transaction.new(details))
  end

  def withdraw_amount(amount, date = Date.new.current_date)
    if @balance - amount > 0
      @balance -= amount
      details = { date: date, credit: 0, debit: amount, balance: @balance }
      update_history(Transaction.new(details))
    else
      puts "Insufficient funds"
    end
  end

  def print_statement
    statement = StatementPrinter.new(@transactions.transactions).print
  end

  private

  def update_history(transaction)
    @transactions.record(transaction)
  end
end
