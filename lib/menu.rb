class Menu

	attr_reader :name,:dishes

	def initialize(name, dishes)
		@name = name
		@dishes = dishes
	end

	def add_dish(dish)
		dishes << dish
	end

	def cost
		@cost = dishes.inject(0){ |memo, dish| memo += dish.cost}.round(2)
	end
end