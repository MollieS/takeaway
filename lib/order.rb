class Order
  attr_reader :items

  def initialize(restaurant)
    @items = []
    @restaurant = restaurant
  end

  def add_item(item, quantity = 1)
    quantity.times { items << @restaurant.menu.select { |k, v| k == item.to_sym } }
  end
end
