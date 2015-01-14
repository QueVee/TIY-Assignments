
class Wolf

	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end

	def howl
		"Howwwwwl!"
	end

	def loud_howl
		@age >= 3	
	end

	def attack?
		true
	end

	def dominant?(young_wolf)
		@age > young_wolf.age
	end

	def takes_over?(wolf)
		@age > wolf.age
	end
end