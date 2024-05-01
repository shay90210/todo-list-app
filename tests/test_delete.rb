# tests/test_delete.rb

require 'minitest/autorun'
require './list.rb'

class DeleteNoteProcessor
  def user_choice
    puts "Here is your list. Which note would you like to delete?"
    gets.chomp.to_i
  end

  def delete_input

  end

  class TestDelete < Minitest::Test
    # some code
  end
end
