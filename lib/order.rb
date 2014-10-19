require './lib/message.rb'

class Order
	attr_reader :client, :items, :status, :order_number

	def initialize(client)
		@client= client
		@items = []
		@status = :inProgress
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
		raise 'To checkout you should add some dishes first.' if @items.count == 0
		raise 'This order is already checkout.' if @status == :done
		@status = :done
		msg.send(client.phone)
	end

	def inProgress? 
		@status == :inProgress
	end
end