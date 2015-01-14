require 'minitest/autorun'
#require 'minitest/pride'
require './game'

class TestGame < MiniTest::Unit::TestCase

  def setup
    @game = Game.new
  end

  def test_game_exists
    assert @game
  end

  def test_deck_exists
    assert @game.deck
  end
end

class TestDeck < MiniTest::Unit::TestCase

  def setup
    @deck = Game.new.deck
  end
 
  def test_there_are_fiftytwo_cards
    assert_equal 52, @deck.card.flatten.length #test deck is there
    assert_equal 4, @deck.names.length
    assert_equal 51, @game.deck.length #test what is left in deck
  end

end