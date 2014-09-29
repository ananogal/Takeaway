require 'twilio-ruby'

class Message
	attr_reader :client

	def initialize
		account_sid = "ACa5b0cd2c2e773febc4f37fe3238a5cd6"
		auth_token = "05e4ca98fbb2f999bcf2a385dc270e92"
		@client = Twilio::REST::Client.new account_sid, auth_token
	end

	def send(phone)
		return nil if phone == nil 
		time = Time.now + 3600
		strTime = time.strftime('%H:%M') 
		@message = @client.account.messages.create({:to => phone,
	                                   :from => "+441493202102",
	                                   :body => "Thank you! Your order was placed and will be delivered before #{strTime}"})
	end
end