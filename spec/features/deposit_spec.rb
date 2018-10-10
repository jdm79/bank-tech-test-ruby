require 'account'

RSpec.describe Account do
  describe 'deposit' do
    subject { described_class.new }

    it 'can deposit funds into the account' do
      subject.deposit_amount(1000)
      subject.deposit_amount(2000)
      subject.deposit_amount(2500)
      expect(subject.balance).to eq(5500)
    end
  end
end