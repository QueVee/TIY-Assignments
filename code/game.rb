# this is going to be a game of blackjack
# we'll run this within irb, by dealing cards
   # there are 52 cards = 
      # four suits 
        # 1-9 face value;  
        # 10, j, q, k = value 10; 
        # A = value 11
   # two cards to each -the player & the dealer (loop)
   # dealer < 17, deal card 
   # when dealer is over 17, then dealer stops
   # dealer cards > 21, bust, Player Wins!
   # dealer gets 21 - win!
   # player gets cards < 17, get card
   # player gets cards == 17, stay or draw(tie) need true stmt
   # player cards < 22, get cards
   # player cards  >= 22, bust, Dealer Wins!
 

class Game
  attr_accessor :deck #this means we can
 #interact with the instance variable @grid(@deck)
  #and we can pretend it's a method: Game.new.grid(deck)

  def initialize
    @deck = :the_cards
  end

  

end

  