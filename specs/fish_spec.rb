require("minitest/autorun")
require("minitest/reporters")
require_relative("../bears")
require_relative("../river")
require_relative("../fish")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class FishTest < MiniTest::Test

end
