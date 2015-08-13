require 'restaurant' 

describe Restaurant do
  context 'viewing the menu' do
    it 'should return the menu items' do
      expect(subject.view_menu).to eq ({ pizza: "£10.00", beer: "£7.00" })
    end
  end
end
