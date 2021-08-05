class Printer 

  def print(transactions)
    puts " Date     || Deposit || Wihdraw || Balance" + "\n" + transactions.each { |data|
      "#{data}"
    }.join("\n")
  end

end