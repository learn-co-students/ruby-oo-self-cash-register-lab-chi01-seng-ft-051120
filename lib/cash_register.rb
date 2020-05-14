
class CashRegister
attr_accessor :total, :discount, :last_transaction 

def initialize(discount = 0)
    @total = 0
    @discount = discount 
    @items_array = []
end 

def add_item(title, price, quantity=1)
    self.total = self.total + (price * quantity)
    quantity.times do 
      self.items << title
    end
    self.last_transaction = quantity * price
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