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

	def test_deck_can_deal_card
		deck = @deck.deal(3)
		assert_equal 49, @deck.size
	end

	def test_deck_returns_new_deck
		new_deck = Deck.new
		refute @deck == new_deck
	end
end