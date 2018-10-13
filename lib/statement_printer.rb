# prints out a statement
class StatementPrinter
  def initialize(transactions)
    @transactions = transactions
  end

  def print
    puts ' date      || credit || debit || balance '
    puts '--------------------------------------'
    @transactions.each do |transaction|
      puts "#{transaction.date}   || #{transaction.credit}    ||  #{transaction.debit}    || #{transaction.balance}"
    end
  end
end
