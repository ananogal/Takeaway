require 'menu'

describe Menu do

	let(:dish) { double :dish, :name =>:burger, :cost =>3.99 }
	let(:drink) { double :drink, :name =>:juice, :cost =>2.45}
	let(:chicken_burger) { double :chicken_burger, :name =>:chiken, :cost =>2.99}
	let(:dishes) {[dish, drink]}
	let(:menu) { Menu.new(:name, dishes) }

	it 'should have a name' do
		expect(menu.name).to eq(:name)
	end

	it 'should have a dish' do
		expect(menu.dishes.count).to be > 0
	end

	it 'can add more dishes to the menu' do
		expect{menu.add_dish(chicken_burger)}.to change{menu.dishes.count} 
	end

	it 'should have a cost equal to the sum of its dishes' do
		menu.add_dish(chicken_burger)
		expect(menu.cost).to eq(9.43)
	end
end