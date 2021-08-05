# frozen_string_literal: true

require_relative './printer.rb'
require 'date'

# :nodoc:
class Account
  attr_reader :transactions, :balance

  START = 0

  def initialize(printer = Printer.new)
    @balance = START
    @transactions = []
    @printer = printer
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

  # def statement
  #   i = 0
  #   while i <= @transactions.length
  #     puts @transactions[i]
  #     i += 1
  #   end
  # end

  def statement
    @printer.print(@transactions)
  end
end
