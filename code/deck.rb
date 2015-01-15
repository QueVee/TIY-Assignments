class Deck


	def initialize(card)
		@card = card
	end

	def deck
		@deck = Array.new(52){Card.new(7, :spades)}
	end

	

end