class Account 
  def initialize(balance = 0) 
    @balance = balance
  end

  def get_balance 
    @balance
  end

  def deposit(amount) 
    @balance = @balance + amount
  end

  def withdraw(amount) 
    @balance = @balance - amount
  end

end