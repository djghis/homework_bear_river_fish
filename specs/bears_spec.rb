require("minitest/autorun")
require("minitest/reporters")
require_relative("../fish")
require_relative("../river")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class BearsTest < MiniTest::Test