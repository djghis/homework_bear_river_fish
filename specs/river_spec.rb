require("minitest/autorun")
require("minitest/reporters")
require_relative("../fish")
require_relative("../bears")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
  end
end
