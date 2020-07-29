
class CashRegister
  

  attr_accessor :total, :discount, :items, :lastitem,

  
  def initialize(discount=0)
    @items = []
    @discount = discount
    @total = 0 
  end
  
  def total 
    @total
  end
  
  def add_item(title, price, quantity = 1)

    counter = quantity
    while counter > 0 
      @items << title
      counter -= 1 
    end
    @items[title] = price
    @total += (price * quantity)
    @lastitem = (price * quantity)
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      otherDiscount = @discount.to_f

      @total = (@total * (1- (otherDiscount/100))).to_i
    
      return "After the discount, the total comes to $#{@total}."
      @total = (@total * (1- (otherDiscount/100)))
    
      return "success message"
    end
  end
  
  def items
    @itemArray
  end
  
  def void_last_transaction

    @total -= @items[@lastitem]
    @items.delete(@lastitem)
    @total = 0.0 if @items.empty?
    @items.keys
  end
  
  def void_last_transaction
    total -= @@items.values.last 
    @items.last.delete
    @total = 0.0 if @@items.last == nil 
  end
end     #ends class 
