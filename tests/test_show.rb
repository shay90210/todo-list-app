require "minitest/autorun"
require "./list.rb"

class TestShowNote < Minitest::Test
  def test_show_note
    list = List.new
    note = "This is a sample note."

    formatted_note = list.show_note(note)

    assert_equal("#{index + 1}. #{note}")
  end
end
