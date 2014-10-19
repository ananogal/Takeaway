require './lib/order_item.rb'

describe OrderItem do

	let(:menu){double :menu,  :name => :chicken, :cost => 6.45 }
	let(:dish) { double :dish, :name => :burger, :cost =>3.99 }
	let(:order_item) { OrderItem.new(menu) }
	let(:neworder) {OrderItem.new(menu, 2)}	
	let(:order_dish) {OrderItem.new(dish, 1)}

	it 'should initialize with a meal' do
		expect(order_item.meal).not_to  be nil
	end

	it 'should initialize with a default quantity' do
		expect(order_item.quantity).to eq(1)
	end

	it 'should have a price equal to quantity * cost' do
		expect(neworder.cost).to eq(12.9)
	end

	it 'should be able to return the meal name' do
		expect(order_item.name).to eq(menu.name)
	end

	it 'should accept a dish too' do
		expect(order_dish.name).to eq(:burger)
	end 
end