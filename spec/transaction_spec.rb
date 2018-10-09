require "transaction"

describe Transaction do
  txn = {date: "09/10/2018", credit: 100, debit: 50, balance: 50}
  subject { Transaction.new(txn) }

  it 'creates a new transaction' do
    expect(subject).to be_instance_of(Transaction)
  end

  it 'has a date value of 09/10/2018' do
    expect(subject.date).to eq("09/10/2018")
  end
  it 'has a credit value of 100' do
    expect(subject.credit).to eq(100)
  end
  it 'has a debit value of 50' do
    expect(subject.debit).to eq(50)
  end
  it 'has a balance value of 50' do
    expect(subject.balance).to eq(50)
  end
end
