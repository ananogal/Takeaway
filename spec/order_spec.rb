require './lib/order.rb'

describe Order do

	let(:client) {double :client}
	let(:dish){double :dish, :name => :burger, :cost =>2.9}
	let(:dish2){double :dish2, :name => :coke, :cost =>2.5}
	let(:menu){double :menu, :name => :all, :cost =>5.4}
	let(:item) {double :item, :meal =>menu, :quantity =>1, :cost =>5.4}
	let(:item2) {double :item2, :meal =>dish2, :quantity =>5, :cost => 12.5}
	let(:item3) {double :item3, :meal =>dish, :quantity =>2, :cost => 5.8}
	let(:message) {double :message, phone: :phone_number}

	let(:order) {Order.new(client)}

	it 'should be initialize with a client' do
		expect(order.client).not_to be nil
	end

	it 'should initialized with the status with inProgress' do
		expect(order.status).to eq(:inProgress)
	end

	it 'should have a list of items' do
		expect(order.items).not_to be nil
 	end

 	it 'should accept new items' do
 		expect{order.add_item(item)}.to change{order.items.count} 
 	end

 	it 'should show the total cost of the order' do
 		order.add_item(item)
 		order.add_item(item2)
 		order.add_item(item3)
 		expect(order.cost).to eq(23.7)
 	end

 	it 'should know if it is in progress' do
		expect(order.inProgress?).to be(true)
	end

	it 'can only be checkout if it has 1 item in the order' do
		expect{order.checkout(message)}.to raise_error 'To checkout you should add some dishes first.'
	end	

	it 'can only checkout if it is in progress' do
		checkoutProcess
		order.checkout(message)
		expect{order.checkout(message)}.to raise_error 'This order is already checkout.'
	end	

 	it 'should send a message when checking out' do
 		checkoutProcess
 		order.checkout(message)
 	end

 	it 'should change status to done when checking out' do
 		checkoutProcess
 		expect{order.checkout(message)}.to change{order.status}
 	end

	it 'should not be in progress after checkout' do
		checkoutProcess
			expect{order.checkout(message)}.to change{order.inProgress?}
	end

	def checkoutProcess
		allow(message).to receive(:send)
 		allow(client).to receive(:phone)
 		order.add_item(item)
	end
end