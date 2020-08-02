class CashRegister
attr_accessor :total, :discount
def initialize(discount = 0.0)
  @total= 0
  @discount = discount
  @items=[]
end
def add_item(title, price, quantity = 1)
  @last_item_price = price
  @last_quantity_item = quantity
  @total += price * quantity
    quantity.times do
      @items << title
    end
end
def apply_discount
 @total -= (@discount.to_f/100 * @total)
 if @discount == 0
   "There is no discount to apply."
else
   "After the discount, the total comes to $#{@total.to_i}."
end
end
 def items
  @items
 end
def void_last_transaction
  @total -=  (@last_item_price * @last_quantity_item)
  @items.pop
  if @items.length <= 0
    @total = 0.0
  end
end
end