require 'twilio-ruby'

class Message
	attr_reader :client

	def initialize
		account_sid = ENV['TWILIO_SID']
		auth_token = ENV['TWILIO_TOKEN']
		@client = Twilio::REST::Client.new account_sid, auth_token
	end

	def send(phone)
		return nil if phone == nil || phone.empty?
		time = Time.now + 3600
		strTime = time.strftime('%H:%M') 
		@message = @client.account.messages.create({:to => phone,
	                                   :from => "+441493202102",
	                                   :body => "Thank you! Your order was placed and will be delivered before #{strTime}"})
	end
end