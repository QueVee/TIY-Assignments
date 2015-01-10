def english_to_number(word_or_words)
  hash = {
	'one' => 1,
	'five' => 5,
	'twenty' => 20
  }
  array_of_words = word_or_words.split
  total = 0
  array_of_words.each{|string| total = total + hash[string]}
  total
end_of_input

puts english_to_number('twenty') #=>20
puts english_to_number('five') #=> 5
puts english_to_number('twenty five') #=> 25
end


