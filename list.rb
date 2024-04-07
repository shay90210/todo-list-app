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
      puts "5. Quit"

      option = gets.chomp.to_i
      case option
      when 1
        add_note
        break
      when 2
        access_list
        break
      when 3
        modify_note
        break
      when 4
        delete_note
        break
      when 5
        puts "Let us know if you need to make a note next time! Goodbye!"
        break
      else
        "Did you mean to make a choice? Please choose a number between 1-4."
        puts "\n"
      end
    end
  end

  def add_note
    new_list = []

    puts "What would you like to add?"
    puts "\n"
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
      "What would you like to add instead?"
    end
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
