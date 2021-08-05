require 'printer'

describe Printer do
  it 'prints out title in the statements' do
    expect {subject.print([])}.to output(/ Date     || Deposit || Wihdraw || Balance/).to_stdout
  end
end