require 'minitest/autorun'
require './wolf'
require './wolfpack'
#A wolfpack can take down different sized things depending on how big it is.

#A pack of 2 wolves can hunt a gazelle.
#A pack of 5 wolves can get a water buffalo.
#A pack of 30 wolves can eat a rhinoceros.
class Testwolfpack < MiniTest::Unit::TestCase

	def setup
		snarl = Wolf.new("Snarl", 5)
		snap = Wolf.new("Snap", 5)
		chewy = Wolf.new("Chewy", 2)
		spike = Wolf.new("Spike", 11)
		sneaky = Wolf.new("Sneaky", 3)
		@members = [snarl, snap, chewy, spike, sneaky]
		@wolfpack = Wolfpack.new(@members)
	end

	def test_wolfpack_has_members
    	assert_equal @members, @wolfpack.members
  	end

end