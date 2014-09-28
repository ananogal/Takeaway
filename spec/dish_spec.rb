require './lib/dish.rb'

describe Dish do 
	let(:dish) { Dish.new(:Burger, 1.95) }

	it 'should have a name after initialize' do	
		expect(dish.name).to eq(:Burger)
	end 

	it 'should have a cost after initialize' do
		expect(dish.cost).to eq(1.95)
	end 
end