require './lib/message.rb'

describe Message do 

	it 'should be initialize with a client' do
		msg = Message.new
		expect(msg.client).not_to be nil 
	end
end