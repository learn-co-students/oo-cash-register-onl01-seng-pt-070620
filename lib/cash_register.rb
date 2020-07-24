class CashRegister
  attr_accessor :total, :price, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @previous_transaction = []
  end
  
  def add_item(name, price, quantity = 1)
    self.total += price * quantity
    @previous_transaction << price
    counter = quantity
    while counter > 0 do
      @items << name
      counter -=1
    end
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -= (@total * @discount * 0.01 ).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total = @total - @previous_transaction.pop
    if @previous_transaction.empty?
      @total = 0.0
    end
  end
end