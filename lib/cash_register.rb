
require 'pry'
class CashRegister
  
  attr_accessor :discount, :total, :add_item, :cash_register

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price)
    binding.pry
    price.collect |amt| 
    
      price + @total
    end
  end
 
  
  
  
  
  
  
  
  
end