require "transaction"

describe Transaction do
  txn = {date: "01/01/2012", credit: 100, debit: 0, balance: 100}
  subject { Transaction.new(txn) }

  it "creates a new transaction" do
    expect(subject).to be_instance_of(Transaction)
  end
end

