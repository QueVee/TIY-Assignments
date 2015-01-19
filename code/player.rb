class Player

	attr_accessor :hand 

	def initialize(cards = [])
		@hand = cards
		
	end

	def take(card)
		@hand << card
	end

	def display
		"Player has #{card_display}"
	end

	def card_display
		@hand.collect{|card| card.display}.join(', ')
	end

	def high_card
		@hand.max_by{|value| value.size}
	end

	def pair

	end

	def flush

	end

	def straight

	end

	def three_of_a_kind

	end

	def straight_flush

	end

end