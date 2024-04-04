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
      when 2
      when 3
      when 4
      else
      end
    end
  end

  def add_note
  end

  def access_list
  end

  def modify_note
  end

  def delete_note
  end
end
