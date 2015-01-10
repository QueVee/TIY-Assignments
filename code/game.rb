# this is going to be a game of blackjack
# we'll run this within irb, by dealing cards
   # there are 52 cards = four suits of 1-9 face value; 10, j, q, k = 10 value; A = 11
   # two to the player and two to the dealer
   # player gets cards < 17, get card
   # player gets cards == 17, stay or draw(tie) need true stmt
   # player cards < 22, get cards
   # player cards  >= 22, bust, Dealer Wins!
   # dealer < 17, deal card 
   # when dealer is over 17, then dealer stops
   # dealer cards > 21, bust, Player Wins!
   # dealer gets 21 - win!

class Game
  attr_accessor :deck #this means we can
 #interact with the instance variable @grid
  #and we can pretend it's a method: Game.new.grid

  def initialize #this runs when Game.new is called
    @deck = [[2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11],
              [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11],
              [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11],
              [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11]
            ]
  end  

  def play_card
    @deck.delete_at(rand(@deck.length))
    #@deck.delete_at(rand(array.length))
  end 

  puts "Here are dealer cards"   
end


#array.delete_at(rand(array.length))