require 'restaurant'

feature 'Ordering a takeaway' do
  scenario 'viewing the menu' do
    restaurant = Restaurant.new
    expect(restaurant.view_menu).to eq({ pizza: "£10.00", beer: "£7.00" })
  end
end
