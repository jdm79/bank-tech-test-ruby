require 'account'

RSpec.describe Account do
  describe 'withdraw' do
    subject { described_class.new }

    it 'can deposit funds into the account' do
      subject.deposit_amount(1000)
      subject.withdraw_amount(500)
      expect(subject.balance).to eq(500)
    end
  end
end