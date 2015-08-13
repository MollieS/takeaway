require 'restaurant' 

describe Restaurant do
  context 'viewing the menu' do
    it 'should return the menu items' do
      expect(subject.menu).to eq ({ pizza: 10, beer: 7 })
    end
  end
end
