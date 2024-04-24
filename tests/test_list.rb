# tests/test_list.rb

require 'minitest/autorun'
require './list.rb'

class AddNoteProcessor
  def get_user_input
    print "What would you like to add to your list?"
    gets.chomp
  end

  def store_input
    @notes = []
    user_note = get_user_input()
    @notes << user_note
    return @notes
  end

  class TestList < Minitest::Test 
    def test_add_note
      processor = AddNoteProcessor.new
      
      processor.stub :get_user_input, "test user_note" do
        assert_equal ["test user_note"], processor.store_input()
      end
    end
  end
end

#=begin
class RemoveNoteModification
  def get_user_input
    print "Here is your list. Which note would you like to delete?"
    gets.chomp.to_i
  end

  def remove_value(notes, note_to_remove)
    notes.delete(note_to_remove)
    return @notes
  end
end

class RemoveNoteModificationTest < Minitest::Test
  modifier = RemoveNoteModification.new
  notes = ["cook dinner", "wash clothes", "record tv show"]
  note_to_remove = "cook dinner"

  modified_notes = modifier.remove_value(notes.dup, note_to_remove)
end
#=end
