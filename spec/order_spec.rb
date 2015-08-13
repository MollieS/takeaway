require 'order'

describe Order do
  let(:restaurant) { double :restaurant }
  let(:order) { Order.new(restaurant) }

  context 'a new order' do
    it 'should have no items' do
      expect(order.items).to eq([])
    end
  end
end
