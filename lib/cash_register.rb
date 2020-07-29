
class CashRegister
  
  attr_accessor :total, :discount, :items, :lastitem, :itemArray
 
  
  
  
  def initialize(discount=0)
    @itemArray = []
    @items = {}
    @discount = discount
    @total = 0 
  end
  
  def total 
    @total
  end
  
  def add_item(title, price, quantity = 1)
    counter = quantity
    while counter > 0 
      @itemArray << title
      counter -= 1 
    end
    @items[title] = price
    @total += (price * quantity)
    @lastitem = title
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      otherDiscount = @discount.to_f
      @total = (@total * (1- (otherDiscount/100))).to_i
    
      return "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    @itemArray
  end
  
  def void_last_transaction

    @total -= @items[@lastitem]
    @items.delete(@lastitem)
    @total = 0.0 if @items.empty?
  end
end     #ends class 
