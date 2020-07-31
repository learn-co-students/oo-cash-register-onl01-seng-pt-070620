
class CashRegister
  
  attr_accessor :total, :discount, :items
  

  # sets an instance variable @total on initialization to zero
  # optionally takes an employee discount on initialization
  
  def initialize( discount = 0 )
    @total = 0
    @discount = discount
    @items = []
  end
  
  
  # returns the current total
  
  def total
    @total
  end 


 # accepts a title and a price and increases the total
 # also accepts an optional quantity
 # doesn't forget about the previous total
 
  def add_item ( title, price, quantity = 1)
    @last_transaction = price * quantity
    @total = @total + (price * quantity)
      quantity.times do
        @items << title
      end
  end 
  

  # if the cash register was initialized with an employee discount
  # returns success message with updated total
  # reduces the total
  # if the cash register was NOT initialized with an employee discount
  # returns a string error message that there is no discount to apply
  
  
  def apply_discount
      if @discount != 0
        @total = @total - @total*@discount/100
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end 
  end 
  

# returns an array containing all items that have been added

  def items
    @items
  end 

# subtracts the last item from the total
# returns the total to 0.0 if all items have been removed

  def void_last_transaction
    @total = @total - @last_transaction
    
  end 
  
end 