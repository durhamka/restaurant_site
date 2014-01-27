class Item
  attr_reader :name, :normal_price, :description
  def initialize(name, normal_price, description)
    @name = name
    @normal_price = normal_price
    @description = description
  end

  def price(date)
    if date.wednesday?
      normal_price * 0.9
    else
      normal_price
    end
  end
end