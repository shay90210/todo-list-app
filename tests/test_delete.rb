# tests/test_delete.rb

require 'minitest/autorun'
require './list.rb'

class DeleteNoteProcessor
  def get_user_input
    puts "Here is your list. Which note would you like to delete?"
    gets.chomp.to_i
  end
end

class TestDelete < Minitest::Test
  # some code
end
