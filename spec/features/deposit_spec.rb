require 'account'

RSpec.describe Account do
  describe 'deposit' do
    subject { described_class.new }

    it 'can deposit funds into the account' do
      subject.deposit_amount(1000)
      expect(subject.balance).to eq(1000)
    end
  end
end