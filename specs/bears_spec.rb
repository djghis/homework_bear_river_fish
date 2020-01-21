require("minitest/autorun")
require("minitest/reporters")
require_relative("../fish")
require_relative("../river")
require_relative("../bears")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class BearsTest < MiniTest::Test

  def setup

    @bear = Bears.new("Yogi", "Grizzly")
    @fish1 = Fish.new("fish1")
    @fish2 = Fish.new("fish2")
    @fish3 = Fish.new("fish3")
    @fish4 = Fish.new("fish4")
    @fish5 = Fish.new("fish5")
    @fishes = [@fish1, @fish2, @fish3, @fish4, @fish5]
    @river = River.new("Amazon", @fishes)
  end

  def test_fish_count
    # assert_equal(4, @fish.fish_count)
    assert_equal(0, @bear.fish_count())
  end

  def test_eat_fish
    # @river.add_fish(@fish1)
    # @river.add_fish(@fish2)
    # @river.add_fish(@fish3)
    # @river.add_fish(@fish4)
    # @river.add_fish(@fish5)
    @bear.eat_fish(@fish1)
    assert_equal(1, @bear.fish_count())
  end

  def test_roar
assert_equal("ROAR", @bear.roar)
  end

end
