require "minitest/autorun"
require "./list.rb"

class TestShowNote < Minitest::Test
  def test_show_note
    list = List.new
    note = "This is a sample note."

    assert_equal("#{index + 1}. #{note}")
  end
end
