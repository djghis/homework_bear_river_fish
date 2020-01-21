require("minitest/autorun")
require("minitest/reporters")
require_relative("../bears")
require_relative("../river")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class FishTest < MiniTest::Test
