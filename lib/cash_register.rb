require 'pry'
class CashRegister

  attr_accessor :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
  end

  def discount
    @discount

  end

  def add_item(item,price,quantity=1)
    @last_transaction = [item,price,quantity]
    i = 1
    while i<=quantity do
      @items << item
      i+=1
    end
    price = price*quantity
    @total = (@total+price)
  end

  def apply_discount
    out_msg = ""
    #binding.pry
    if @discount == 0
      #binding.pry
      out_msg = "There is no discount to apply."
    else
      #binding.pry
      @total = @total*(1-(@discount*0.01))
      out_msg = "After the discount, the total comes to $#{@total.to_i}."
    end
    return out_msg
  end

    def items
      return @items
    end

    def void_last_transaction
      i = 1
      while @last_transaction[2]>=i do
        @total = @total-(@last_transaction[1])
        i+=1
      end
      @items = @items.delete(@last_transaction[0])
    end

end
