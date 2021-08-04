# frozen_string_literal: true

require 'date'

# :nodoc:
class Account
  attr_reader :transactions, :balance

  START = 0

  def initialize
    @balance = START
    @transactions = []
  end

  def deposit(money)
    @balance += money
    @transactions << ["#{date}"+ '||' + '     ' + '||' + "#{money}" + '||' + "#{@balance}"]
  end

  def withdraw(money)
    raise 'Withdrawing more than you have' if @balance < money
    @balance -= money
    @transactions << ["#{date}" + '||' + "#{money}" + '||' + '     ' + '||' + "#{@balance}"]
  end

  def date
    Date.today
  end

  def statement
    i = 0
    while i <= @transactions.length
      puts @transactions[i]
      i += 1
    end
  end
end
