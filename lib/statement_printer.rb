# prints out a statement
class StatementPrinter
  def initialize(balance)
    @balance = balance
  end
  def print
    puts "date  || credit || debit || balance"
    puts "today ||   30   ||  40   || #{@balance}"
  end
end