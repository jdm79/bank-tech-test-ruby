# prints out a statement
class StatementPrinter
  def initialize(balance)
    @balance = balance
  end
  def print
    "Current balance: #{@balance}"
  end
end