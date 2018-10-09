require "transaction_history"

describe TransactionHistory do
  subject { TransactionHistory.new }

  it "creates a new transactionHistory" do
    expect(subject).to be_instance_of(TransactionHistory)
  end
end
