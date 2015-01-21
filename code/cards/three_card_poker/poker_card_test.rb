require 'minitest/autorun'
require './pokercard'

class PokercardTest < MiniTest::Unit::TestCase

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
    
end