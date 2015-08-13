require 'restaurant'
require 'order'

feature 'Ordering a takeaway' do

 let(:restaurant) { Restaurant.new } 
 let(:order) { Order.new(restaurant) }

  scenario 'viewing the menu' do
    expect(restaurant.menu).to eq({ pizza: "£10.00", beer: "£7.00" })
  end

  scenario 'adding an item' do
    order.add_item("beer")
    expect(order.items).to eq([{beer: "£7.00"}])
  end

  scenario 'adding multiple items' do
    order.add_item("beer", 2)
    expect(order.items).to eq([{ beer: "£7.00" }, { beer: "£7.00" }])
  end
end
