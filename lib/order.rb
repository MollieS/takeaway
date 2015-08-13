class Order
  attr_reader :items

  def initialize(restaurant)
    @items = []
    @restaurant = restaurant
    @cost = 0
  end

  def add_item(item, quantity = 1)
    quantity.times do
      to_add = @restaurant.menu.select { |k, v| k == item.to_sym }
      @cost += to_add.values[0]
      items << to_add
    end
  end

  def view
    items == [] ? "nothing ordered yet" : items
  end

  def total
    "£#{ @cost }"
  end
end
