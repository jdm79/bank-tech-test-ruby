class Account

  attr_reader :balance
  def initialize(balance = 0)
    @balance = balance
  end

  # def balance
  #   @balance
  # end

  def deposit_amount(amount)
    @balance += amount
  end

  def withdraw_amount(amount)
    @balance -= amount
  end

  def print_balance
    "Your current balance is #{@balance}"
  end
end
