require 'restaurant'
require 'order'

feature 'Ordering a takeaway' do

 let(:restaurant) { Restaurant.new } 
 let(:order) { Order.new(restaurant) }

  scenario 'viewing the menu' do
    expect(restaurant.menu).to eq({ pizza: 10, beer: 7 })
  end

  scenario 'adding an item' do
    order.add_item("beer")
    expect(order.items).to eq([{beer: 7}])
  end

  scenario 'adding multiple items' do
    order.add_item("beer", 2)
    expect(order.items).to eq([{ beer: 7 }, { beer: 7 }])
  end

  scenario 'viewing an order' do
    order.add_item("beer")
    order.add_item("pizza")
    expect(order.view).to eq([ { beer: 7 }, { pizza: 10 } ])
  end

  scenario 'viewing the total of an order' do
    order.add_item("beer")
    order.add_item("pizza")
    expect(order.total).to eq("£17")
  end
end
