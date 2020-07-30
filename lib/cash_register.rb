require 'pry'
class CashRegister
  attr_accessor :register, :total, :items, :discount, :price


def initialize(discount = 0)
  @items = []
  @discount = discount
  @total = 0
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  @items << ([title, price] * quantity)
  @total += (price * quantity)
  @price = (price * quantity)
end

def apply_discount
  if @discount == 0
    "There is no discount to apply."
  else
    discounted = discount.to_f
    @total = (@total*(1-(discounted/100))).to_i
    "After the discount, the total comes to $#{@total}."
  end
end

def items
   @items.flatten.select {|x| x.class == String}
end

def void_last_transaction
    @total -= @price
  end

end