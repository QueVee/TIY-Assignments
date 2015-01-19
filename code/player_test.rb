require 'minitest/autorun'
require './player'
require './deck'


class PlayerTest < MiniTest::Unit::TestCase

	def setup
		cards = [Card.new(7, :spades), Card.new(2, :hearts), Card.new("Ace", :diamonds)]
		@player = Player.new(cards)
		@dealer = Player.new(cards)
	end

	def test_player_has_hand
		assert @player.hand
		#p @player.inspect
	end

	def test_dealer_has_hand
		assert @dealer.hand
		#p @dealer.inspect
	end
 
	def test_player_hand_holds_cards
		card = Card.new(3, :hearts)
		@player.take card
		assert @player.hand.include? card
		p @player.inspect
	end
 
	def test_player_displays_hand
		assert_equal "Player has 7 of Spades, 2 of Hearts, Ace of Diamonds", @player.display 
	end

	#def test_high_card
	#	 assert_equal 13, @player.high_card.value
	#end

	def test_pair

	end

	def test_flush

	end
end