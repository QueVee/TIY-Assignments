require 'minitest/autorun'
#require 'minitest/pride'
require './game'

class TestGame < MiniTest::Unit::TestCase

  def test_game_exists
    assert Game.new
  end

  def test_game_deck_exists
    assert Game.new.deck
  end


end

