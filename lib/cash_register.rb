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

# class CashRegister

#   attr_accessor :items, :discount, :total, :last_transaction

#   def initialize(discount=0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end

#   def add_item(title, amount, quantity=1)
#     self.total += amount * quantity
#     quantity.times do
#       items << title
#     end
#     self.last_transaction = amount * quantity
#   end

#   def apply_discount
#     if discount != 0
#       self.total = (total * ((100.0 - discount.to_f)/100)).to_i
#       "After the discount, the total comes to $#{self.total}."
#     else
#       "There is no discount to apply."
#     end
#   end

#   def void_last_transaction
#     self.total = self.total - self.last_transaction
#   end
# end