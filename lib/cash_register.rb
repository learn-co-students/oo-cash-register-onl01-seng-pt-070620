class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = amount * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end






# class CashRegister
#   attr_accessor :total, :discount
#   #  :price, :items
#
#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @items = []
#     @last_item = []
#   end
#
#   def add_item(item, price, quantity = 1)
#     @price = price
#     @total += price * quantity
#   quantity.times do
#     items << title
#   end
#     @last_item = price * quantity
#       # @items << item
#   end
#
#
#   def apply_discount
#     if discount
#
#
#       @discount > 0
#       @to_take_off = (price * discount)/100
#       @total -= @to_take_off
#       return "After the discount, the total comes to $#{total}."
#     else
#       return "There is no discount to apply."
#     end
#   end
#
#   def void_last_transaction
#     @total -= @price
#   end
#
# end
