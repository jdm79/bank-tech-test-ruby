# Holds the history array and pushes items into it
class TransactionHistory
  attr_reader :transactions
  def initialize
    @transactions = []
  end

  def record(txn)
    @transactions << txn
  end
end
