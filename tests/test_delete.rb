# tests/test_delete.rb

require 'minitest/autorun'
require './list.rb'

class DeleteNoteProcessor
  def user_choice
    puts "Here is your list. Which note would you like to delete?"
    gets.chomp.to_i
  end

  def delete_note(index)
    @notes.delete_at(index)
  end

  class TestDelete < Minitest::Test
    def setup
      processor = DeleteNoteProcessor.new
      @processor.instance_variable_set(:@notes, ["cook dinner", "wash clothes"])
    end

    def test_delete_note
      delete_index = 0
      @processor.delete_note(delete_index)

      expected_notes = ["wash clothes"]
      assert_equal expected_notes, @processor.instance_variable_get(:@notes)
    end
  end
end
