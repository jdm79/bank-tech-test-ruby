require "transaction_history"

describe TransactionHistory do
  subject { TransactionHistory.new }

  it 'creates a new transactionHistory' do
    expect(subject).to be_instance_of(described_class)
  end

  it 'starts with an empty list of transactions' do
    expect(subject.transactions).to eq([])
  end
end
