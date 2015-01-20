require 'minitest/autorun'
require './card'

class CardTest < MiniTest::Unit::TestCase

	def setup
		@card = Card.new(7, :spades)
	end

	def test_card_has_value_and_suit
		assert_equal 7, @card.value
		assert_equal :spades, @card.suit 
	end

	def test_jack_valued_at_11
		jack = Card.new(:jack, :diamonds)
		assert_equal 11, jack.value
	end

	def test_queen_valued_at_12
		queen = Card.new(:queen, :spades)
		assert_equal 12, queen.value
	end

	def test_king_value_at_13
		king = Card.new(:king, :clubs)
		assert_equal 13, king.value
	end

	def test_ace_value_at_14
		ace = Card.new(:ace, :hearts)
		assert_equal 14, ace.value
	end

	def test_card_value_will_display_as_a_string
		assert_equal 7, @card.value
	end

	def test_numbered_card_displays_its_suit_and_value
		assert_equal "7 of Spades", @card.display
	end

	def test_face_card_displays_suit_and_face_value
		king_of_clubs = Card.new(:king, :clubs)
		assert_equal "King of Clubs", king_of_clubs.display
	end
		

end

