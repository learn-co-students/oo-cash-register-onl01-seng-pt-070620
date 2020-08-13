class CashRegister
  attr_accessor :total, :discount, :title, :price

  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @total += price * quantity
  end

  def apply_discount

    @total *= (@discount * 0.1)
  end
end
