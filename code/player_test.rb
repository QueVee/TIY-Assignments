require 'minitest/autorun'
require './player'
require './deck'


class PlayerTest < MiniTest::Unit::TestCase

	def setup
		cards = [Card.new(7, :spades), Card.new(2, :hearts), Card.new("Ace", :diamonds)]
		@player = Player.new(cards)
	end

	def test_player_has_hand
		assert @player.hand
		#p @player.inspect
	end

	def test_has_no_matching_cards
		assert @player.has_no_matching_cards?
	end

	def test_high_card_value_returned
		 assert_equal 14, @player.high_card.value
	end

	def test_hand_can_have_2_mathching_cards_for_a_pair
		card1 = Card.new(6, :hearts)
		card2 = Card.new(6, :diamonds)
		@newhand = Player.new([card1, card2])
		assert @newhand.has_2_matching_cards?
	end

	def test_hand_has_3_matching_suits_for_a_flush
		card1 = Card.new(3, :spades)
		card2 = Card.new(9, :spades)
		card3 = Card.new(5, :spades)
		newhand = Player.new([card1, card2, card3])
		puts "test matching with spades spades spades"
		assert newhand.has_3_matching_suits?
	end
=begin 
	def test_hand_has_3_consectutive_numbers_no_matching_suit_for_a_straight
		card1 = Card.new(3, :spades)
		card2 = Card.new(4, :hearts)
		card3 = Card.new(5, :diamonds)
		newhand = Player.new([card1, card2, card3])
		puts "test matching with 3 4 5"
		assert newhand.has_straight?
	end
=end

	def test_hand_has_3_of_same_value_for_three_of_a_kind
		card1 = Card.new(7, :spades)
		card2 = Card.new(7, :clubs)
		card3 = Card.new(7, :diamonds)
		newhand = Player.new([card1, card2, card3])
		puts "test matching with 7 7 7"
		assert newhand.has_3_matching_values?
	end

end