
class CashRegister
    attr_accessor :total, :discount, :items, :price, :quantity
    
    def initialize(discount = nil)
        # sets an instance variable @total on initialization to zero
        # optionally takes an employee discount on initialization
        @total = 0
        @discount = discount
        #returns an array containing all items that have been added
        @items = []
    end

    def total
        #returns the current total
        @total
    end

    def add_item(title, price, quantity = 1)
        @price = price
        @title = title
        @quantity = quantity
        self.total += price * quantity
        @items += [title] * quantity
      end

    def apply_discount
        # applies the discount to the total price
        # returns success message with updated total
        # reduces the total
        if @discount
            discounted = (price * discount) / 100
            @total -= discounted
            "After the discount, the total comes to $#{@total}."
        else
            #returns a string error message that there is no discount to apply
            "There is no discount to apply."
        end
    end

    def void_valid
        "remove"
    end

    def void_last_transaction
        self.total -= price * quantity
      end
end

