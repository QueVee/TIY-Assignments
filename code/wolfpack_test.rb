require 'minitest/autorun'
#require 'minitest/pride'
require './wolfpack'

class Testwolfpack < MiniTest::Unit::TestCase

	def setup
		@wolfpack = Wolfpack.new(:name, :age)
	end

	def test_wolfpack_exists
    	assert @wolfpack
  	end

end