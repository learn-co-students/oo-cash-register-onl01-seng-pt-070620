
class CashRegister
  
  attr_accessor :total, :discount
 
  
  @@items = {}
  
  
  
  def initialize(discount=0)
    puts discount
    @discount = discount
    @total = 0 
  end
  
  def total 
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @@items[:title] = price
    @total += (price * quantity)
  end
  
  def apply_discount
    if @discount == 0
      return "error"
    else
      puts "hello"
      puts @total
      puts @discount
      @discount = @discount.to_f
      @total = (@total * (1- (@discount/100) ).to_i )
      puts @total
      
      return "success message"
    end
  end
  
  def items
    @@items.keys
  end
  
  def void_last_transaction
    total -= @@items.values.last 
    @@items.last.delete
    @total = 0.0 if @@items.last == nil 
  end
end     #ends class 
