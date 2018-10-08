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

    # it "should start with an initial balance of 100 if 100 initially deposited" do
    #   account = Account.new(100)
    #   expect(account.get_balance).to eq(100)
    # end

  end

end
