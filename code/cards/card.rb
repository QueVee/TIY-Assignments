require_relative '../to_english'

class Card

  include Comparable

  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def value
    case @value.is_a(Fixnum)
      @value
    end
  end

  def displayj
    "#{@value.to_s.capitalize} of #{@suit.capitalize}"
  end

end
