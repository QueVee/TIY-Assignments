require 'minitest/autorun'
require './blackjack_card'

class TestCard < MiniTest::Unit::TestCase

  def test_face_card_valued_at_10
    card = Card.new(:king, :diamonds)
    assert_equal 10, card.value
  end

  def test_ace_valued_at_11
    ace = Card.new(:ace, :spades)
    assert_equal 11, ace.value
  end

end