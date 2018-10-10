require 'account'

RSpec.describe Account do
  describe 'balance' do
    subject { described_class.new }

    it 'calculates a series of transactions' do
      subject.deposit_amount(1000)
      subject.deposit_amount(2000)
      subject.withdraw_amount(500)
      expect(subject.balance).to eq(2500)
    end
  end
end