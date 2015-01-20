
#The modern casino game of Three Card Poker is played with a 52-card deck. 
#There are two bet types available. Before seeing any cards, each player 
#can make a bet on one, both or neither.

require './card'

class Deck

	attr_accessor :cards

	def initialize
		#@card = Card.new(2, :spades)
		@cards = cards || [(2..10).to_a, 'Jack', 'Queen', 'King', 'Ace'].flatten.map do |value|
	 		['clubs', 'spades', 'diamonds', 'hearts'].map do |suit|
	 			Card.new(value, suit)
	 		end
		end#.flatten
		@cards.flatten!.shuffle
	end

	def shuffle
		@cards = @cards.shuffle!
	end

	def size
		@cards.length
	end

	def deal(n)
		@cards.shift(n)
	end


end