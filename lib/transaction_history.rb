# Holds the history array and pushes items into it
class TransactionHistory
  attr_reader :transactions
  def initialize
    @transactions = []
  end

  def record(transaction)
    @transactions.push(transaction)
  end
end
