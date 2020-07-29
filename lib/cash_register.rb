class CashRegister
  attr_accessor :total, :discount 
  
  def initialize(discount = 0)
    @items = []
    @total = 0 
    @discount = discount
  end
  
  def add_item(price, item, number = 1)
    self.total = price * item
    @items << item 
  end 
end 
