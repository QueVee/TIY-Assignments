require 'minitest/autorun'
require './card'
require './deck'


class DeckTest < MiniTest::Unit::TestCase

	def setup
		@deck = Deck.new
	end

	def test_there_are_52_cards
		assert_equal 52, @deck.cards.length
		assert @deck.cards.pop.is_a?Card
		
	end
end