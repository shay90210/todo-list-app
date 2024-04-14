class List
  attr_accessor :name
  attr_accessor :notes

  def initialize
    @name = name
    @notes = []
  end

  def user_name
    puts "Hello User. Please enter your name."
    self.name = gets.chomp.capitalize
    puts "\n"
    return list_menu
  end

  def list_menu
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
    loop do
      puts "\n"
      puts "What would you like to add to your list?"
      user_note = gets.chomp
      puts "\n"
      puts "Do you want to add #{user_note} to #{self.name}'s list?"
      puts "Enter 1 = Yes"
      puts "Enter 2 = No"

      choice = gets.chomp.to_i
      case choice
      when 1
        @notes.push(user_note)
        puts "Note Added!"
        puts "\n"
        return list_menu
      when 2
        puts "Let's update your request."
      else 
        puts "\n"
        puts "Invalid option."
      end
    end
  end

  def modify_note
    puts "Which note would you like to modify?"
    
    @notes.each_with_index do |note, index|
      puts "#{index + 1}. #{note}"
      puts "\n"
    end

    choice = gets.chomp.to_i
  end

  def delete_note
    puts "\n"
    puts "Here is your list. Which note would you like to delete?"

    @notes.each_with_index do |note, index|
      puts "#{index + 1}. #{note}"
      puts "\n"
    end

    choice = gets.chomp.to_i
    if choice == @notes(user_note)
      @notes.delete(user_note)
    end

    puts "Note has been successfully deleted!"
    return list_menu
  end

  def show_list
    puts "\n"
    puts "Here is your list!"
  
    @notes.each_with_index do |note, index|
      puts "#{index + 1}. #{note}"
      puts "\n"
    end
    return list_menu
  end
end
