require 'pry'
class CashRegister
  attr_accessor :total, :discount, :quantity, :title, :all_items, :last_trans_amt, :price
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @all_items = []
<<<<<<< HEAD
    @last_trans_amt = 0
=======
>>>>>>> 394695ae18b07a6fdb4f22341b64dba6219178c6
  end
  
  def add_item(title, price, quantity = 1)
    price = price * quantity
    @quantity = quantity
    @title = title
    @total += price
    if quantity == 1
      @all_items << title
<<<<<<< HEAD
      @last_trans_amt = price * quantity
=======
>>>>>>> 394695ae18b07a6fdb4f22341b64dba6219178c6
    elsif quantity > 1
      quantity.times do 
        @all_items << title
      end
<<<<<<< HEAD
      @last_trans_amt = price
    else
      @last_trans_amt = 0
    end
=======
    end
    # @last_trans_amt = price * quantity
>>>>>>> 394695ae18b07a6fdb4f22341b64dba6219178c6
  end
  
  def apply_discount
    if discount > 0
      amount_saved = @total * (discount / 100.0)
      @total = @total - amount_saved
      return "After the discount, the total comes to $#{@total.to_i}."
    elsif discount == 0 
      return "There is no discount to apply."
    end
  end
  
  def items
    @all_items
  end
  
  def void_last_transaction
<<<<<<< HEAD
    @total = @total - @last_trans_amt
    @last_trans_amt
=======
    self.total -= @last_trans_amt
    # binding.pry
    # binding.pry
    # if @all_items.size == 0
    #   @total = 0.0
    # end
    # @total -= @last_trans_amt
    # @total
>>>>>>> 394695ae18b07a6fdb4f22341b64dba6219178c6
  end
end
