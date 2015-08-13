class Order
  attr_reader :items

  def initialize(restaurant)
    @items = []
    @restaurant = restaurant
  end

  def add_item(item, quantity = 1)

  end
end
