require './lib/client.rb'

describe Client do

	let (:client) {Client.new(:name, :phone)}

	it 'should be initialize with a name' do
		expect(client.name).not_to be nil
	end

	it 'should be initialized with a phone' do
		expect(client.phone).not_to be nil
	end 

	it 'should be able to place and order' do
		
	end
end