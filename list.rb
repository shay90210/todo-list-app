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
      puts "2. Modify a note"
      puts "3. Delete a note"
      puts "4. Show list"
      puts "5. Quit"

      option = gets.chomp.to_i
      case option
      when 1
        add_note
        break
      when 2
        modify_note
        break
      when 3
        delete_note
        break
      when 4
        show_list
        break
      when 5
        puts "We'll create a list next time! Goodbye!"
        break
      else
        puts "\n"
        puts "Did you mean to make a choice? Please choose a number between 1-4."
        puts "\n"
      end
    end
  end

  def add_note
    new_list = []

    puts "\n"
    puts "What would you like to add?"
    user_note = gets.chomp
    puts "\n"
    puts "Do you want to add #{user_note} to #{self.name}'s list?"
    puts "Enter 1 = Yes"
    puts "Enter 2 = No"

    choice = gets.chomp.to_i
    case choice
    when 1
      puts "Note Added!"
    when 2
      puts "What would you like to add instead?"
    end
  end

  def modify_note
    pp "We're modifying a note!"
  end

  def delete_note
    pp "We're deleting a note!"
  end

  def show_list
    pp "We're going to show your current list!"
  end
end
