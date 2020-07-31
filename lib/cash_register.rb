require "pry"

class CashRegister
  attr_accessor :discount , :total , :last_total, :last_items, :items
  
  
  def initialize (discount=0) 
    @discount= discount 
    @total=0
    @items=[]
  end 
  
  def add_item(title, price, quantity=1)
    @last_total = @total
    @last_items = @items
    @total += price*quantity
    quantity.times{@items << title}
  end

  
  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else 
      @total = @total - (@total / 100 * @discount)
      "After the discount, the total comes to $#{@total}."
    end 
   end 
  
  def void_last_transaction 
    @total = self.last_total
    @items = self.last_items
  end
end 
