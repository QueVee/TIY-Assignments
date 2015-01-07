Array
An array is a container object that holds a fixed number of values of a single type.
Method: array = [1, 2, 3]
Uses: To keep a list of same things. 

Hash
Like arrays but uses unique keys and their values.
Method: age = {"kelly" => 51, "You" => 30 }
uses: Teachers keeping a list of grades by name/grade.

Numbers:

  Integers
	A whole number.
	Method: .to_i
	Uses: change a number in a string or a decimal to a whole number.

  Floats
	A number with a decimal portion
	Method: .to_f
	Uses: change a whole number to a decimal.

Strings
A collection of characters such as “Hello,world!”
Method: .to_s
Uses: to use numbers in a string without math.
  Upcase
	Changes every letter to uppercase or capital letters.
	Method: .upcase
	Uses: used to change the case of characters in a string to all uppercase letters.

  Downcase
	Opposite of upcase.  Changes everything to lowercase letters.
	Method: .downcase
	Uses:  used to change the case of characters in a string to all lowercase letters.

	a Markdown file containing names, definitions, methods, and uses for each data type you've learned about so far
	Data Type Documentation Format

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

If
What does it mean? If is like branching. Used with a true or false expression to run the code or not.
How do you make one? if name == 'Kelly' #If true, returns chosen code 
What can you do with if?
  #You can return a special statement if the expression is true.
  age =20
  if age < 21
  puts "No alcohol for you!"
  end

Else
What does it mean?  If an if statement is not true, you can set it to something 'else'.
How do you make one? if name == 'Kelly' #returns 'John' if false.
What can you do with else?
  #You can return a different statement if the expression is false.
  age =23
  if age < 21
    puts "No alcohol for you!"
  else 
    puts "Have one on me!"
  end



