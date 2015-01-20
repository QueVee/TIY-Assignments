require 'minitest/autorun'
require './player'
require './deck'


class PlayerTest < MiniTest::Unit::TestCase

	def setup
		cards = [Card.new(7, :spades), Card.new(2, :hearts), Card.new("Ace", :diamonds)]
		@player = Player.new(cards)

		card1 = Card.new(6, :hearts)
		card2 = Card.new(6, :diamonds)
		@newhand = Player.new([card1, card2])
	end

	def test_player_has_hand
		assert @player.hand
		#p @player.inspect
	end

	def test_high_card_value_returned
		 assert_equal 14, @player.high_card.value
	end

	def test_hand_can_have_2_mathching_cards_for_a_pair
		assert @newhand.has_2_matching_cards?
	end

end