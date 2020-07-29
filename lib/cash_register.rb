class CashRegister
  attr_accessor :register, :total, :items, :discount


def initialize(discount = 0)
  @items = {}
  @discount = discount
  @total = 0
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  @items[title] = price
  @total += (price * quantity)
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

#def items
 #returns an array containing all items
 #@items.keys
#end

#def void_last_transaction
#subtracts last item from the total
#returns total as 0.0 if array it empty
#end

end