class Player

	attr_accessor :hand 

	def initialize(cards = [])
		@hand = cards
	end

	def high_card
		@hand.max_by{|card| card.value}
	end

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

	def flush

	end

	def straight

	end

	def three_of_a_kind

	end

	def straight_flush

	end

end