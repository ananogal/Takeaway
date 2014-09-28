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
		dishes.inject{ |sum, n| sum.cost + n.cost }
	end
end