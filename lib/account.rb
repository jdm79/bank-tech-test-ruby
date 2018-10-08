class Account 
  def initialize(balance = 0) 
    @balance = balance
  end

  def get_balance 
    @balance
  end

  def deposit_amount(amount) 
    @balance = @balance + amount
  end

  def withdraw_amount(amount) 
    @balance = @balance - amount
  end

  def print_balance
    "Your current balance is #{@balance}"
  end

end