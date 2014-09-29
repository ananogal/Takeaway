require './lib/message.rb'

class Order
	attr_reader :client, :items

	def initialize(client)
		@client = client
		@items = []
	end 

	def add_item(item)
		items << item
	end

	def cost
		@cost = 0
		items.each{ |item| @cost += item.cost}
		@cost.round(2)
	end 

	def checkout(msg)
		msg.send
	end
end