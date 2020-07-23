require 'pry'
class CashRegister
    attr_accessor :discount, :total, :lastprice
    def initialize(discount=0)
        @discount = discount
        @total = 0
        @all = []
    end
    def add_item(title,price,quantity=1)
        @lastprice = price * quantity
        @total += price * quantity
        quantity.times{@all << title}
    end
    def apply_discount
        if self.discount == 20
        @total = @total * 0.8
        "After the discount, the total comes to $#{total.to_i}."
        else
            "There is no discount to apply."
        end
    end
    def items
        @all
    end
    def void_last_transaction
        @total -= @lastprice
    end
end