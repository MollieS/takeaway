require 'order'

describe Order do
  let(:restaurant) { double :restaurant }
  let(:order) { Order.new(restaurant) }

  context 'a new order' do
    it 'should have no items' do
      expect(order.items).to eq([])
    end

    context 'adding items' do
      before(:each) do
        allow(restaurant).to receive(:menu).and_return({ beer: 7, pizza: 10 })
      end

      it 'should add one item' do
        order.add_item("beer")
        expect(order.items).to eq([{ beer: 7 }])
      end

      it 'should add multiple items' do
        order.add_item("beer")
        order.add_item("pizza")
        expect(order.items).to eq([{ beer: 7 }, { pizza: 10 }])
      end

    end

    context 'viewing an order' do

      it 'should return nothing if order is empty' do
        expect(order.view).to eq("nothing ordered yet")
      end

      it 'should have a total of 0 if order is empty' do
        expect(order.total).to eq("£0")
      end

    end

  end
end
