class Card

	attr_reader :suits

	def initialize(value, suits)
		@value = value
		@suits = suits
	end

	def value
		if @value.is_a?(Fixnum)
			@value
		elsif @value == :jack
			11
		elsif @value == :queen
			12
		elsif @value == :king
			13	
		else @value ==:ace
			14
		end
	end

	def display
		"#{@value.to_s.capitalize} of #{suits.to_s.capitalize}"
	end
end
