RSpec.describe Account do 

  context "balance" do

    it "should start with an initial balance of 0 if no credit initially deposited" do
      account = Account.new(0)
      expect(account.get_balance).to eq(0)
    end
    
  end

end
