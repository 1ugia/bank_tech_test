class Account

  def initialize(balance)
    @balance = balance
    @date = date
  end

  def get_balance
    @balance
  end

  def deposit(money)
    @balance += money
    @date
  end

  def withdraw(money)
    @balance -= money
  end

  # def date
  #   Time.now
  # end

end
