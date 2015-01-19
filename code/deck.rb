require './card'

class Deck

	attr_accessor :cards

	def initialize
		#@card = Card.new(2, :spades)
		@cards = cards || [(2..10).to_a, 'Jack', 'Queen', 'King', 'Ace'].flatten.map do |value|
	 		['clubs', 'spades', 'diamonds', 'hearts'].map do |suit|
	 			Card.new(value, suit)
	 		end
		end.flatten.shuffle
		#@cards.flatten!.shuffle
	end

	def size
		@cards.length
	end

	def deal(n)
		@cards.shift(n)
	end


end