# cash money baybee
require 'pry'

class CashRegister

  attr_accessor :total, :price, :discount, :title
  attr_reader :items, :quantity

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @title = title
    @quantity = quantity
    self.total += price * quantity
    @items += [title] * quantity
    # binding.pry
  end

  def apply_discount
    if self.discount
      disc_amount = (price * discount) / 100
      self.total -= disc_amount
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
    # @items << self.title
    # binding.pry
  end

  def void_last_transaction
    self.total -= price * quantity
  end


end
