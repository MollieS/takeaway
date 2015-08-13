feature 'Ordering a takeaway' do
  scenario 'viewing the menu' do
    restaurant = Restaurant.new
    expect(restaurant.view_menu).to eq { item1: "£10.00", item2: "$7.00" }
  end
end
