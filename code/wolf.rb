#A wolf has a name and an age. 
#The leader of the wolfpack is the oldest wolf. 
#All wolves are submissive to older wolves and dominant over younger wolves.
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


	def jump?
		true
	end

	def dominant?(young_wolf)
		@age > young_wolf.age
	end
end