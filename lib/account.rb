require 'date'

class Account
  attr_reader :transactions
  START = 0

  def initialize
    @balance = START
    @transactions = []
  end

  def get_balance
    @balance
  end

  def deposit(money)
    @balance += money
    @transactions << ["#{date}" + '||' + '     ' + '||' + "#{money}" + '||' + "#{@balance}"]
  end
  
  def withdraw(money)
    if @balance < money
      raise "Withdrawing more than you have"
    else
      @balance -= money
      @transactions << ["#{date}" + '||' + "#{money}" + '||' + '     ' + '||' + "#{@balance}"]
    end
  end
  
  def date
    Date.today
  end

  def statement
    i = @transactions.length
    while i >= 0
      puts @transactions[i]
      i -= 1
    end
  end

end

