   class CashRegister
  attr_accessor :total , :discount, :items, :last_transaction
 
  def initialize (discount=0)
    @total=0
    @discount=discount
    @items=[]
  end
  def total
   @total
  end
  def add_item (item, price, quantity=1)
    @total += price * quantity
    if quantity > 1
       counter=0
      while counter < quantity
      @items << item
      counter += 1
      end
    else
      @items << item
    end
     @last_transaction= price * quantity
  end
  def apply_discount
    if @discount > 0
      discount= @discount/100.to_f
      @total=@total - @total * discount
      "After the discount, the total comes to $#{@total.to_i}."
    else "There is no discount to apply."
  end
  end
  def void_last_transaction
     @total = @total - @last_transaction
   end
end