require 'account'

RSpec.describe Account do 

  context "balance" do

    subject { Account.new }

    it "should create a new account" do 
      expect(subject).to be_instance_of(Account)
    end

    it "should start with an initial balance of 0 if no credit initially deposited" do
      expect(subject.get_balance).to eq(0)
    end

    it "should calculate a series of deposits and withdrawals" do
      subject.deposit_amount(1000)
      subject.deposit_amount(2000)
      subject.withdraw_amount(500)
      expect(subject.get_balance).to eq(2500)
    end

  end

  context 'initial deposit' do

    subject { Account.new(100) }

    it "should start with an initial balance of 100 if 100 initially deposited" do
      expect(subject.get_balance).to eq(100)
    end

  end

  context 'deposit' do

    subject { Account.new }

    it "should increment the balance accordingly" do
      expect{subject.deposit_amount(50)}.to change{subject.get_balance}.by(50)
    end

  end

  context 'withdrawal' do

    subject { Account.new(100) }

    it "should return a balance minus the withdrawal" do
      expect{subject.withdraw_amount(50)}.to change{subject.get_balance}.by(-50)
    end

  end

  context 'print statement' do 

    subject { Account.new }

    it "should print a log of statements" do
      subject.deposit_amount(1000)
      subject.deposit_amount(2000)
      subject.withdraw_amount(500)
      expect(subject.print_balance).to eq("Your current balance is #{subject.get_balance}")
    end

  end

end
