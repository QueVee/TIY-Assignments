require_relative '../card'

class PokerCard < Card

  #attr_reader :suit

  #def initialize(value, suit)
   # @value = value
    #@suit = suit
  #end

  def value
    i#f @value.is_a?(Fixnum)
     # @value
    #elsif @value == :jack
    if @value == :jack
      11
    elsif @value == :queen
      12
    elsif @value == :king
      13  
    else @value ==:ace
      14
    end
  end

  #def display
  #  "#{@value.to_s.capitalize} of #{@suit.capitalize}"
  #end

end