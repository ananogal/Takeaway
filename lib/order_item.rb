class OrderItem 

	attr_reader :meal
	attr_reader :quantity

	def initialize(meal, quantity=1)
		@meal = meal
		@quantity = quantity
	end

	def cost
		meal.cost * @quantity
	end

	def name 
		meal.name
	end

end