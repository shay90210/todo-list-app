class List
  attr_accessor :name, :notes

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
      puts "\n"
      puts "Hello #{self.name}! What would you like to do today?"
      puts "1. Add a note"
      puts "2. Modify a note"
      puts "3. Delete a note"
      puts "4. Show list"
      puts "5. Quit"

      menu_option = gets.chomp.to_i
      case menu_option
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

      add_choice = gets.chomp.to_i
      case add_choice
      when 1
        @notes.push(user_note)
        puts "'#{user_note}' has been added to #{self.name}'s list!"
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
    puts "\n"
    puts "Which note would you like to modify?"
    @notes.each_with_index do |note, index|
      puts "#{index + 1}. #{note}"
    end
    
    note_to_replace = gets.chomp.to_i

    if note_to_replace.between?(1, @notes.length)
      puts "\n"
      puts "What would you like to enter instead?"
      new_note = gets.chomp
      @notes.delete_at(note_to_replace - 1)
      @notes.push(new_note)
      puts "#{note_to_replace} was replaced with #{new_note}!"
      return list_menu
    else
      puts "\n"
      puts "Note is not found on the list."
      return modify_note
    end
  end

  def delete_note
    puts "\n"
    puts "Here is your list. Which note would you like to delete?"

    @notes.each_with_index do |note, index|
      puts "#{index + 1}. #{note}"
    end

    delete_choice = gets.chomp.to_i
    if delete_choice.between?(1, @notes.length)
      @notes.delete_at(delete_choice - 1)
      puts "'Note ##{delete_choice}' has been deleted from #{self.name}'s list!"
    else
      puts "\n"
      puts "Invalid choice. Please select a valid note number."
      delete_note
    end
    return list_menu
  end

  def show_list
    puts "\n"
    puts "Here is your list!"
  
    @notes.each_with_index do |note, index|
      puts "#{index + 1}. #{note}"
    end
    return list_menu
  end
end
