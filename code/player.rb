class Player

	attr_accessor :hand 

	def initialize(cards = [])
		@hand = cards
	end

	def has_no_matching_cards?
		card_suits = @hand.collect{|card| card.suit}
		unique_suits = card_suits.uniq
		card_suits.size == unique_suits.size
	end

	def high_card
		@hand.max_by{|card| card.value}
	end

	#def card_display
	#	@hand.map{ |card| card.display}.join (', ')
	#end

	def has_2_matching_cards?
		counts = {}
		@hand.each do |card|
			puts "counts is #{counts}"
      puts "value is #{card.value}"
      puts "counts for that value is #{counts[card.value]}"
      puts "changing the above to an integer and adding 1 gets #{counts[card.value].to_i + 1}"
      counts[card.value] = counts[card.value].to_i + 1
      puts "counts is #{counts}"
    end
    counts.any?{|value, number| number == 2 }
	end

	def has_3_matching_suits?
		counts = {}
		@hand.each do |card|
			puts "counts is #{counts}"
      puts "suit is #{card.suit}"
      puts "counts for that suit is #{counts[card.suit]}"
      puts "changing the above to an integer and adding 1 gets #{counts[card.suit].to_i + 1}"
      counts[card.suit] = counts[card.suit].to_i + 1
      puts "counts is #{counts}"
    end
    counts.any?{|suit, number| number == 3 }
	end

	def has_straight?
		
  end

	def has_3_matching_values?
		counts = {}
		@hand.each do |card|
			puts "counts is #{counts}"
      puts "value is #{card.value}"
      puts "counts for that value is #{counts[card.value]}"
      puts "changing the above to an integer and adding 1 gets #{counts[card.value].to_i + 1}"
      counts[card.value] = counts[card.value].to_i + 1
      puts "counts is #{counts}"
    end
    counts.any?{|value, number| number == 3 }
	end

	def straight_flush

	end

end