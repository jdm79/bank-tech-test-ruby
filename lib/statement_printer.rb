# prints out a statement
class StatementPrinter
  def initialize(balance)
    @balance = balance
  end
  def print
    puts "date  || credit || debit || balance"
    puts "#{@date} ||  #{@credit}  ||  #{@debit}   || #{@balance}"
  end
end