# more arrays - loops

# def total(prices)
#   amount = 0
#   index = 0
#   while index < prices.length
#     amount += prices[index]
#     index += 1
#   end
#   amount
# end

def total(prices)
  amount = 0
  prices.each do |price|
    amount += price
  end
  amount
end

# def refund(prices)
#   amount = 0
#   index = 0
#   while index < prices.length
#     amount -= prices[index]
#     index += 1
#   end
#   amount
# end

def refund(prices)
  amount = 0
  prices.each do |price|
    amount -= price
  end
  amount
end

# def show_discounts(prices)
#   index = 0
#   while index < prices.length
#     amount_off = prices[index] / 3.0
#     puts format("Your discount: $%.2f", amount_off)
#     index += 1
#   end
# end

def show_discounts(prices)
  prices.each do |price|
    price /= 3.0
    puts format("Your discount: $%.2f", price)
  end
end

pr = [2.3, 5.6, 7.3, 9.25, 10.22, 14.61]

puts format("$%.2f", total(pr))
puts format("$%.2f", refund(pr))
show_discounts(pr)

def name_method(&block)
  puts "a new name"
  block.call("Hal")
end

# def name_method
#   yield  "Kal"
# end

name_method do |name|
  puts "name is #{name}"
end