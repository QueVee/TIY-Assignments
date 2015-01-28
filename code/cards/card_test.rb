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

  def test_numbered_card_displays_its_suit_and_value
    assert_equal "7 of Spades", @card.display
  end

  def test_face_card_displays_suit_and_face_value
    king_of_clubs = Card.new(:king, :clubs)
    assert_equal "King of Clubs", king_of_clubs.display
  end

end