require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end
  
  def add_item(title, price, qty = 1)
    self.last_transaction = price * qty
    self.total += price * qty
    i = 0
    until i == qty
    items << title
    i += 1 
    end
  end
  
  def apply_discount
    if discount > 0 
      self.total = (self.total - self.total * (discount.to_f/100)).to_i 
      "After the discount, the total comes to $#{self.total}."
    else 
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total -= self.last_transaction
  end
end
