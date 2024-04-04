class List
  attr_accessor :name
  attr_accessor :note
  attr_accessor :date

  def initialize
    @name = name
    @note = note
    @date = date
  end

  def note_request
    puts "Hello User. Please enter your name."
    self.name = gets.chomp.capitalize
    puts "\n"

    loop do
      puts "Hello #{self.name}! What would you like to do today?"
      puts "\n"
      puts "1. Add a note"
      puts "2. Access your list"
      puts "3. Modify a note"
      puts "4. Delete a note"

      choice = gets.chomp.to_i
      case choice
      when 1
        add_note
      when 2
        access_list
      when 3
        modify_note
      when 4
        delete_note
      when 5
        puts "Let us know if you need to make a note next time! Goodbye!"
        break
      else
        "Did you mean to make a choice? Please choose a number between 1-4."
      end
    end
  end

  def add_note
    pp "We're adding a note!"
  end

  def access_list
    pp "We're accessing a list!"
  end

  def modify_note
    pp "We're modifying a note!"
  end

  def delete_note
    pp "We're deleting a note!"
  end
end
