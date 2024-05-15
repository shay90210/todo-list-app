require "minitest/autorun"
require "./list.rb"

class TestShowList < Minitest::Test
  def test_show_list
    list = List.new
    note = "This is a sample note."

    formatted_note = list.show_list(note)

    assert_equal("#{index + 1}. #{note}", formatted_note)
  end
end
