require 'account'

RSpec.describe Account do
  describe 'withdraw' do
    subject { described_class.new(600) }

    it 'can deposit funds into the account' do
      subject.withdraw_amount(500)
      expect(subject.balance).to eq(100)
    end
  end
end