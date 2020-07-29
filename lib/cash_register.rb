require 'pry'
class CashRegister
  
  attr_accessor :total , :discount
  attr_reader :items, :price
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title,price,quantity = 0)
    quantity == 0 ? @total += price && @price = price : @total += (price * quantity) && @price = price * quantity
    if quantity == 0
       @items << title
    else 
      quantity.times do 
        @items << title
      end
    end
  end

  def apply_discount
    if @discount != 0
      @total = @total - (@total / 100 * @discount)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @price
  end
  
end

