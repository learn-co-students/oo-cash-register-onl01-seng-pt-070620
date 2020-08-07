require 'pry'
class CashRegister 
  attr_accessor :total, :discount, :last_transaction_amount, :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
   if quantity > 1 
     i = 0 
     while i< quantity
     @items << item 
     i += 1 
   end 
 else
   @items << item 
 end
 @total += price * quantity
 @last_transaction_amount = @total
 @total 
 end 

  def apply_discount 
     if discount == 0 
    return "There is no discount to apply."
    end 
     @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end 
  binding.pry 
  def void_last_transaction()
    @total = @last_transaction_amount
  end
  
end 