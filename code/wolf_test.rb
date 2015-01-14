#A wolfpack is a group of wolves. A wolf has a name and an age. 
#The leader of the wolfpack is the oldest wolf. 
#All wolves are submissive to older wolves and dominant over younger wolves.
#A wolf can join a pack. If a wolf joins a pack and becomes leader, the pack throws out the former leader.

#A wolf can howl. It howls louder if it's older than 3 than if it's younger. If you call out the name of a wolf to its pack, that wolf will howl.

#A wolfpack can take down different sized things depending on how big it is.

#A pack of 2 wolves can hunt a gazelle.
#A pack of 5 wolves can get a water buffalo.
#A pack of 30 wolves can eat a rhinoceros.
require 'minitest/autorun'
require './wolf'

class Testwolf < MiniTest::Unit::TestCase

	def setup
		@wolf = Wolf.new("Chief", 15)
	end

 	def test_wolf_name_and_age
  	assert_equal "Chief", @wolf.name
    assert_equal 15, @wolf.age
  end

	def test_wolf_can_howl
		assert_equal "Howwwwwl!", @wolf.howl
	end

	def test_wolf_can_howl_louder_than_if_younger_than_3
		assert @wolf.loud_howl
	end

	def test_if_wolf_can_attack
		assert @wolf.attack?
	end

	def test_if_wolf_is_dominant_over_young_wolf
		young_wolf = Wolf.new("indian", 12)
		assert @wolf.dominant?(young_wolf)
	end

	def test_if_wolf_join_pack_and_takes_over_leader # wolf joins a pack and becomes leader, the pack throws out the former leader.
		new_wolf = Wolf.new("New Chief", 16)
		assert_equal @wolf.stays_in_charge?(new_wolf), false
	end

end