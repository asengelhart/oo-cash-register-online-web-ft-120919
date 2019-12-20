class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
  end 
  
  def add_item(unit_name, unit_price, quantity = 1)
    self.total = unit_price * quantity
  end 
end 