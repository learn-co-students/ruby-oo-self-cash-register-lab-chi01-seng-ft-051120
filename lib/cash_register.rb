require 'pry'

class CashRegister
    attr_accessor :total, :discount, :last_transaction 

    def initialize(discount = 0)
        @total = 0
        @discount = discount 
        @items_array = []
    end 

    def total 
        @total 
    end 

    def add_item(item, price, quantity=1)
        @last_transaction = price * quantity
        self.total += price * quantity
        counter = 0
        while counter < quantity do 
            @items_array << item 
            counter += 1 
        end
    end 

    def apply_discount
        if @discount == 0 
            return "There is no discount to apply."
        end 
        discount_percent = @discount.to_f / 100.00
        discounted_amount = self.total * (1 - discount_percent) 
        @total = discounted_amount.to_i
        "After the discount, the total comes to $#{@total}."
    end 

    def items
        @items_array
    end 

    def void_last_transaction 
        new_total = @total - @last_transaction 
        @total = new_total 
    end 
end 
