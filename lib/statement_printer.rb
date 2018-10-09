# prints out a statement
class StatementPrinter
  def initialize(transactions)
    @transactions = transactions
  end
  def print
    puts ' date      | credit | debit | balance '
    puts '--------------------------------------'
    @transactions.each do |txn|
f      puts "#{txn.date} | #{txn.credit}
          |  #{txn.debit} | #{txn.balance}"
    end
  end
end
