class CashRegister
  attr_accessor :total, :discount, :items, :price, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @price = price
    self.total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
    @last_transaction = price
    @last_quantity_item = quantity
    @items
  end
  
  def apply_discount
    if @discount > 0
      discounted = (price * @discount)/100
      self.total -= discounted
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @last_transaction*@last_quantity_item
    @items.pop
    if @items.length <= 0
      @total = 0.0
    end
  end
end

