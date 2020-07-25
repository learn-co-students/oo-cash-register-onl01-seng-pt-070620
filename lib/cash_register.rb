
class CashRegister
# attr_accessor :total, :discount
# def initialize(discount =0)
#   @total = 0
#   @discount = discount
# end
attr_accessor :total, :price, :discount, :items
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end


  def apply_discount
    if @discount > 0
      discount_on_total = (@total * @discount) / 100
      @total -= discount_on_total

      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def add_item(title, price, quantity = 1)

    @price = price * quantity
    @total += @price

    quantity.times do
      @items << title
    end

  end

  def void_last_transaction

    @total -= @price

  end
end



# a = CashRegister.new()
#
# a.add_item("beer", 2, 2)
# puts a.total
# puts a.items
# a.add_item("avocado", 3.5, 2)
# puts a.total
# puts a.items
# a.void_last_transaction
# puts a.total
# puts a.items
