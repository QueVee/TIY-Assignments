class fixnum #num2words.rb:1: class/module name must be CONSTANT

def num_to_word(numbers)
  if numbers == nil
  	numbers = ''
  end
  hash = {
	1=>"one",
	2=>"two",
	3=>"three",
	4=>"four",
	5=>"five",
	6=>"six",
	7=>"seven",
	8=>"eight",
	9=>"nine"
  }
  #array_of_numbers = numbers.split
  array_of_numbers.to_words
  #array_of_numbers.inject(zero){|total, string| total = total + hash[string]}
  total
end

puts num_to_word(1)
puts num_to_word(2)
puts num_to_word(3)
puts num_to_word(4)
