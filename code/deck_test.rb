require 'minitest/autorun'
require './deck'
#require './card'

class DeckTest < MiniTest::Unit::TestCase

	def setup
		@deck =Deck.new
	end

	def test_deck_has_52_cards
		assert_equal 52, @deck.size
	end
end






=begin
end		assert_equal 52, @deck.card.size
		assert @deck.card.all?{|card| card.is_a?(Card)}
	end

	def test_deck_has_all_unique_cards
		assert 52, @deck.card.uniq.size   #uniq built-in method
	end
=end