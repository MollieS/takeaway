require 'restaurant'
require 'order'

feature 'Ordering a takeaway' do

 let(:restaurant) { Restaurant.new } 

  scenario 'viewing the menu' do
    expect(restaurant.view_menu).to eq({ pizza: "£10.00", beer: "£7.00" })
  end

  scenario 'adding an item' do
    order = Order.new
    restaurant.add_item("beer")
    expect(order.items).to eq({ beer: "£7.00" })
  end
end
