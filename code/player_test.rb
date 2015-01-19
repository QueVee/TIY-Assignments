require 'minitest/autorun'
require './card'
require './player'


class PlayerTest < MiniTest::Unit::TestCase


	def setup
		cards = [Card.new(7, :spades), Card.new(2, :hearts), Card.new(13, :diamonds)]
		@player = Player.new(cards)
	end

	def test_player_has_hand
		assert @player.hand 
	end

end