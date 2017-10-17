# more arrays - loops

def total(prices)
  amount = 0
  index = 0
  while index < prices.length
    amount += prices[index]
    index += 1
  end
  amount
end

pr = [2.3, 5.6, 7.3, 9.25, 10.22, 14.61]

puts format("$%.2f", total(pr))