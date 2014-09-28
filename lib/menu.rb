class Menu

	attr_reader :name
	attr_reader :dishes

	def initialize(name, dishes)
		@name = name
		@dishes = dishes
	end

	def add_dish(dish)
		dishes << dish
	end

	def cost
		@cost = 0
		dishes.each{ |dish| @cost += dish.cost}
		@cost.round(2)	
	end
end