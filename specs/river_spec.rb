require("minitest/autorun")
require("minitest/reporters")
require_relative("../fish")
require_relative("../bears")
require_relative("../river")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @bear = Bears.new("Yogi", "Grizzly")
    @fish1 = Fish.new("fish1")
    @fish2 = Fish.new("fish2")
    @fish3 = Fish.new("fish3")
    @fish4 = Fish.new("fish4")
    @fish5 = Fish.new("fish5")
    @fishes = [@fish1, @fish2, @fish3, @fish4, @fish5]
  end

  def test_add_fish_to_river
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @river.add_fish(@fish4)
    @river.add_fish(@fish5)
    assert_equal(5, @river.fish_count)
  end

  def test_remove_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @river.add_fish(@fish4)
    @river.add_fish(@fish5)
    @river.remove_fish
    assert_equal(4, @river.fish_count())

  end

  # def test_fish_count
  #   assert_equal(5, @river.fish_count)
  # end



end
