require 'pry'
class CashRegister

  attr_accessor :total, :cart, :discount, :lastItem

  def initialize(discount = false)
    @total = 0
    @cart = []
    @discount = discount
  end


  def add_item(item, price, quantity=1)
    price *= quantity
    @total += price
    count = 0
    @lastItem = price
    while count < quantity
    @cart << item
    count += 1
  end
  end

  def apply_discount
   if !@discount
     return "There is no discount to apply."
   end
    percent = @discount.to_f / 100
    newTotal = @total * percent
    @total -= newTotal
    return "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= @lastItem
  end

end
