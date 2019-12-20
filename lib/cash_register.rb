class CashRegister
  attr_accessor :total, :discount, :item_list, :last_purchase

  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @item_list = []
  end 
  
  def add_item(unit_name, unit_price, quantity = 1)
    self.last_purchase = unit_price * quantity
    self.total = self.last_purchase
    self.item_list << unit_name
  end 
  
  def apply_discount
    float_discount = self.discount.to_f / 100.0 
    self.total *= float_discount
  end 
  
  def void_last_transaction
    self.total -= self.last_purchase
    self.item_list.pop
  end 
end 