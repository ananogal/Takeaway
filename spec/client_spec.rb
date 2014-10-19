require './lib/client.rb'

describe Client do

	let (:client) {Client.new(:name, :phone)}
	
	it 'should be initialize with a name' do
		expect(client.name).not_to be nil
	end

	it 'should be initialized with a phone' do
		expect(client.phone).not_to be nil
	end 

	it 'should be able to place an order' do
		expect{client.placeOrder}.to change{client.orders.count}.by(1)
	end

	it'should only place a new order if has no order in progress' do
		client.placeOrder
		expect{client.placeOrder}.to raise_error 'You have already a order in progress.'
	end
end