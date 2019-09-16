class Item
  attr_accessor :name, :price

  # @@items = [] Not needed. This could be activaed with below

  def initialize(name,price)
    @name = name
    @price = price
  # @@items << self Not needed. This can be activaed with above
  end

end
