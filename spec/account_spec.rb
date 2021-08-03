require './lib/account.rb'
require 'date'

describe Account do
  before(:each) do
    @account = Account.new
  end
  before(:all) do
    @transactions = []
  end
 
  it 'starts account with zero' do
    expect(@account.get_balance).to eq(0)
  end
  
  context '#deposit' do
    it 'lets you deposit monez' do
      @account.deposit(50)
      expect(@account.get_balance).to eq(50)
    end
  end

  context '#withdraw' do
    it 'lets you withdraw' do
      @account.deposit(50)
      @account.withdraw(20)
      expect(@account.get_balance).to eq(30)
    end

    it 'raises error if you withdraw over the deposit amount' do
      expect {@account.withdraw(50)}.to raise_error "Withdrawing more than you have"
    end
  end

  context '#date' do
    it 'catches the date info of now' do
      expect(@account.date).to eq(Date.today)
    end
  end

  context '#transactions' do
    it 'saves a transaction' do
      @account.deposit(100)
      expect(@account.transactions).to eq( [["2021-08-03||     ||100||100"]] )
    end
    
    it 'saves records of transactions' do
      @account.deposit(100)
      @account.withdraw(50)
      expect(@account.transactions).to eq( [["2021-08-03||     ||100||100"], ["2021-08-03||50||     ||50"]] )
    end
  end

  # context '#statement' do
  #   it 'prints out statement' do
  #     @account.deposit(100)
  #     @account.withdraw(50)
  #     expect(@account.statement).to eq( [] )
  #   end
  # end

end
