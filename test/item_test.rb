require 'test_helper'

describe Item do
  describe '#price' do
    it 'implements a 10% discount on Wednesdays' do
      item = Item.new("Salad", 10.00, "healthy and filling")

      normal_price_date = Date.new(2014, 1, 23)
      item.price(normal_price_date).must_equal(10.00)

      discount_price_date = Date.new(2014, 1, 22)
      item.price(discount_price_date).must_equal(9.00)
    end
  end
end