require "pry"
class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, quantity = 1, price)
    @total = price * quantity + @total
  end
  
  def apply_discount
    @total = @total - (@total * 0.2) 
    return "After the discount, the total comes to $#{@total.round}."
  end
  
  def items(title, quantity)
    items.collect do |item|
    end
  end
  
end
