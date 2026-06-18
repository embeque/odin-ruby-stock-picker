# imports

# functions
def stock_picker(prices_array)
  max_profit = 0
  n = prices_array.length
  result = nil
  
  prices_array.each_with_index do |buy_price, buy_index|
    for sell_index in buy_index...n do
      new_profit = prices_array[sell_index]-buy_price
      if new_profit > max_profit
        max_profit = new_profit
        result = [buy_index, sell_index]
      end
    end
  end
  result
end


# Test
if stock_picker([17,3,6,9,15,8,6,1,10]) == [1,4]
  puts "Test Passed: [1, 4]"
end