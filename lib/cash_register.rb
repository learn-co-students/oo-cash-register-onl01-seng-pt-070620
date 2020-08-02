require 'pry'

class CashRegister 
  
  attr_accessor :total,:discount, :items, :last_transaction_price, :last_transaction_quantity
  
  def initialize(discount=0)
    @total = 0
    @discount = discount 
    @items = []
  end 
  
  def add_item(title,price,quantity=1)
    self.total += price*quantity
    quantity.times do
    @items << title
    end
     @last_transaction_price = price 
    @last_transaction_quantity = quantity
  end
  
  def apply_discount
    if discount == 0 
      "There is no discount to apply."
    else discount  > 0 
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    end  
  end
  
  def void_last_transaction
    price = @last_transaction_price
    quantity = @last_transaction_quantity
    cost = price*quantity
    self.total -= cost
    @items.pop
  end 
  
  
end