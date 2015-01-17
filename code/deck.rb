require './card'

class Deck

	attr_accessor :cards

	def initialize
		@card = Card.new(2, :spades)
		@cards = [(2..10).to_a, 'Jack', 'Queen', 'King', 'Ace'].flatten.collect do |value|
	 		['clubs', 'spades', 'diamonds', 'hearts'].collect do |suit|
	 			Card.new(value, suit)
	 		end
		end
		@cards.flatten!
	end
end