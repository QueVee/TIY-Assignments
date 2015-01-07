#For today's assignment, you will write a function that takes 
#the English word for a number and turns it into an actual number. 
#If I enter english word, it should give me number
#The list should go from 1 to 100 at least.
# example: english_word('one') #=> '1'

english_name

#For example:

# terrible_method_name("one") #=> 1
# terrible_method_name("twelve") #=> 12

#Your function should (a) have a better name than that, and (b) work for any 
#integer up to at least 100. 1_000_000_000 would be better.

#Start by writing expectations for some return values given some inputs. 
#Then write out in English the rules for how numbers are named. 
#Then translate your English into Ruby. 
#Include some expectations in your file so you know it works. 
#Save your work in a file called some_expressive_name.rb.start

#Function that reminds me of the last names of everyone in the clsss.
#If I enter the first name, It should give me the persons name. 
#if it doesn't recognize the first name, it should tell me so. 

# example reminder('Spencer') #=> 'Hopkins'
#		  reminder('Kelly')   #=> 'Strickland'
# 		  reminder('Horace')  #=> "I'm afraid I can't do that, Dave"

# I have a hash of First names and last names
# I want the last name based on the first name.
# name_hash[firstname]
# if I find the name in the hash, print "I'm afraid..."

def int(in_words)
	word_to_num = { 'one' => '1', 
				  'two' => '2', 
				  'three' => '3',
				  'four' => '4',
				  'five' => '5',
				  'six' => '6',
				  'seven' => '7',
				  'eight' => '8'
				}
	name_hash[first_name] || "I'm afraid I can't do that, Dave"
	#if name_hash[first_name]
		#name_hash[first_name]
	#else

	#if first-name == 'Spencer'
		#'Hopkins'
	#elsif first_name == 'Kelly'
		#'Strickland'
	#else 
		#"I'm afraid I can't do that, Dave"
	#end
end	

puts reminder('Spencer')
puts reminder('Kelly') 
puts reminder('Horace')
puts reminder('Angela')

Range

What does it mean? It's a sequence of numbers or letters that has no gaps in it.
How do you make one? (7..11) #contains 7, 8, 9, 10, and 11.
Why would you want one of those? You could get every year since the Declaration of Independence was signed with (1776..2015). Or if you want every day in February, that could be represented as (1..28). You could even grab every letter of the alphabet with ('a'..'z').
What can you do with a range?
  # You can find if something is inside a range:
  (1..10).include?(5) #=> true
  (1..10).include?(300) #=> false

  # You can find out how big it is:
  (1..10).size #=> 10
  (1776..2015).size #=> 240

  # You can iterate over it:
  (13..19).each{|n| print "#{n} " } #=> 13 14 15 16 17 18 19
put

def int(in_words)
	word_to_num = { 'one' => '1', 
				  'two' => '2', 
				  'three' => '3',
				  'four' => '4',
				  'five' => '5',
				  'six' => '6',
				  'seven' => '7',
				  'eight' => '8'
				}
	word_to_num[in_words]|| ""
		#word_to_num[in_words]
		#name_hash[first_name]
	#else

	#if first-name == 'Spencer'
		#'Hopkins'
	#elsif first_name == 'Kelly'
		#'Strickland'
	#else 
		#"I'm afraid I can't do that, Dave"
	#end
end	

puts int('one')
puts int('two') 
puts int('three')
puts int('four')

