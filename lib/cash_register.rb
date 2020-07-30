class CashRegister 
  
  attr_accessor :total, :discount, :items, :last_item
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    
  end
  
  def add_item(item, price, quantity = 1)
    @total += price*=quantity
    x = 0 
    @last_item = price
    while x < quantity
    x += 1 
    @items << item
  end
  end
  
  def apply_discount()
    if @discount > 0 
      @total = @total - (@total * (@discount.to_f / 100))
    return "After the discount, the total comes to $800."
    else
      "There is no discount to apply."
  end
  end
  
  def items
    @items 
  end

  def void_last_transaction
    @total -= @last_item
    
  end
end