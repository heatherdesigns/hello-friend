require "test/unit"
require "./hello_functions"
require "stringio"

class TestHello < Test::Unit::TestCase
  def test_respond
    response_out = StringIO.new
    respond(response_out, "What a lovely name! It's nice to meet you %s.", "George")
    assert_equal "What a lovely name! It's nice to meet you George.", response_out.string.chomp
  end
  
  def test_respond_multiline
    response_out = StringIO.new
    respond(response_out, "Hey")
    respond(response_out, "You")
    response_lines = response_out.string.split("\n")
    assert_equal 2, response_lines.size
  end
end
