class Fixnum #num2words.rb:1: class/module name must be CONSTANT

  def to_english
  	
#  	names = { hash is unecessary
#	1=>"one",
#	2=>"two",
#	3=>"three",
#	4=>"four",
#	5=>"five",
#	6=>"six",
#	7=>"seven",
#	8=>"eight",
#	9=>"nine"
# }
    names_as_array = %w(zero one two three 
                     four five six seven eight nine
                     ten eleven twelve thirteen fourteen
                     fifteen sixteen seventeen eighteen nineteen
                     twenty)
                     #%w array shortcut for words/not zeros
    if self > 999
      "one thousand"
     elsif self > 99
     	remainder = self % 100
     	remainder = self / 100
     	if remainder > 0
     	  "#{hundreds.to_english} hundred #{remainder.to_english}"
     	else
     	  "#{hundreds.to_english} hundred"
     	end
    elsif self > 19 # condition to help fix put 21.to_english break
     	#return "twenty one" #don't use puts it doesn't give return value
     	tens_names = %w(blank blank twenty thirty forty fifty sixty seventy eighty ninty)
     	             #blanks for indexing numbers to match 0,1,2,3
     	tens = self / 10
     	ones = self % 10

    	if ones > 0
     	  "#{tens_names [tens]} #{ones.to_english}"#fix for 30
     	#{}"twenty #{ones.to_english}" #"twenty #{ones.to_english}"" #can chag to interpolation (part after "twenty"+ #names_as_array[ones]#[ones] not[self]-pulling from the ones
     	                                #= self % 10 -condition to fix 22
    	else
     	  tens_names[tens]
    	end
 	else
     	names_as_array[self]
#   old way-names[self] #self is calling on something -index- here is it the object 
    end
  end
end

puts 1.to_english #=> 'one'
puts 2.to_english
puts 3.to_english
puts 4.to_english
puts 13.to_english
puts 21.to_english
puts 22.to_english
puts 30.to_english
puts 99.to_english
puts 101.to_english
puts 1000.to_english



=begin
#entire thing to run 
#if self > 999999
  remainder = self % 1000000
  millions = self / 1000000
  internal_calculation(remainder, millions, "million")
  #or just
  #internal_calculation(1000000, "million")
elsif self > 999
  remainder = self % 1000                                  #see pattern
  millions = self / 1000
  internal_calculation(remainder, thousands, "thousand")
  #or just
  #internal_calculation(1000, "thousand")
elsif self > 99
  remainder = self % 100
  millions = self / 100
  internal_calculation(remainder, hundreds, "hundred")
  #or just
  #internal_calculation(100, "hundred")

USE THIS TO COVER this number structure

def internal_calculation(place, name)
	remainder = self % place
	big_number = self / place
	if remainder > 0
	  "#{big_number.to_english} #{name} #{remainder.to_english}"
	else
		#{big_number.to_english} #{name}"
	end
end
=end