require 'date'

class Account

  def initialize(balance)
    @balance = balance
    @statement = []
  end

  def get_balance
    @balance
  end

  def deposit(money)
    @balance += money
    date
  end

  def withdraw(money)
    if @balance < money
      raise "Withdrawing more than you have"
    else
      @balance -= money
    end
  end

  def date
    Date.today
  end

end

