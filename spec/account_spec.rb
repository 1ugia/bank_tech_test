require './lib/account.rb'

describe Account do
 
  it 'starts account with zero' do
    account = Account.new(0)
    expect(account.get_balance).to eq(0)
  end

  it 'lets you deposit monez' do
    account = Account.new(0)
    account.deposit(50)
    expect(account.get_balance).to eq(50)
  end

  it 'lets you withdraw' do
    account = Account.new(0)
    account.deposit(50)
    account.withdraw(20)
    expect(account.get_balance).to eq(30)
  end

  

end
