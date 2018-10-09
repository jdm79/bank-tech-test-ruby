require 'account'

RSpec.describe Account do
  describe 'balance' do
    subject { described_class.new }

    it 'creates a new account' do
      expect(subject).to be_instance_of(described_class)
    end

    it 'starts with an initial balance of 0 if no credit initially deposited' do
      expect(subject.balance).to eq(0)
    end

    it 'calculates a series of deposits and withdrawals' do
      subject.deposit_amount(1000)
      subject.deposit_amount(2000)
      subject.withdraw_amount(500)
      expect(subject.balance).to eq(2500)
    end
  end

  describe 'initial deposit' do
    subject { described_class.new(100) }

    it 'starts with an initial balance of 100 if 100 initially deposited' do
      expect(subject.balance).to eq(100)
    end
  end

  describe 'deposit' do
    subject { described_class.new }

    it 'increments the balance accordingly' do
      expect { subject.deposit_amount(50) }
        .to change(subject, :balance).by(50)
    end
  end

  describe 'withdrawal' do
    subject { described_class.new(100) }

    it 'returns a balance minus the withdrawal' do
      expect { subject.withdraw_amount(50) }
        .to change(subject, :balance).by(-50)
    end
  end

  describe 'print statement' do
    account = described_class.new

    it 'prints a log of statements' do
      account.deposit_amount(1000)
      account.deposit_amount(2000)
      account.withdraw_amount(500)
      expect(account.print_statement).to eq('Current balance: 2500')
    end
  end
end
