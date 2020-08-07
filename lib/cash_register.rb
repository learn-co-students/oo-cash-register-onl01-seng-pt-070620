require 'pry'
class CashRegister 
  attr_accessor :total, :discount, :last_transaction_amount, :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    item_info = {}
    item_info[:name] = item 
    item_info[:price] = price
    item_info[:quantity] = quantity
    
    @items << item_info
    
    @total += price * quantity
    @last_transaction_amount = total
    @total
  end 
  
  def apply_discount 
    if discount == 0 
      return "There is no discount to apply."
    end 
    
    @total -= @total * @discount / 100 
    return "After the discount, the total comes to $#{@total}."
  end 
  
  def items
   item_name = []
    @items.each do |item_info|
      for qty in 1..item_info[:quantity]
      item_name << item_info [:name]
    end
  end
  item_name
end 

  def void_last_transaction()
    @total -= @last_transaction_amount
    
   # binding.pry 
  end
  
  


end 