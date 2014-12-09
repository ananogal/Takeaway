require_relative 'order'

class Client

	attr_reader :name, :phone, :orders

	def initialize(name, phone)
		@name = name
		@phone = phone.to_s 
		@orders = []
	end

	def placeOrder()
		raise 'You have already a order in progress.' if @orders.count > 0 && @orders.select{|order| order.inProgress?}
		order = Order.new(self)
		@orders << order
	end
end
