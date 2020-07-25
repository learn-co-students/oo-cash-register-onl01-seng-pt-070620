require 'pry'
class CashRegister
  attr_accessor :total, :discount, :quantity, :title, :all_items, :last_trans_amt, :price
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @all_items = []
    @last_trans_amt = 0
  end
  
  def add_item(title, price, quantity = 1)
    price = price * quantity
    @quantity = quantity
    @title = title
    @total += price
    if quantity == 1
      @all_items << title
      @last_trans_amt = price * quantity
    elsif quantity > 1
      quantity.times do 
        @all_items << title
      end
      @last_trans_amt = price
    else
      @last_trans_amt = 0
    end
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
    @total = @total - @last_trans_amt
    @last_trans_amt
  end
end
