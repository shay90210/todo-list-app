# tests/test_list.rb

require 'minitest/autorun'
require './list.rb'

class TestList < Minitest::Test 
  def test_add_note
    @list = List.new
    assert_equal("'cooking dinner' has been added to Shannon's list!", @list.notes)
  end
end
