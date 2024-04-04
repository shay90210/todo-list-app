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
  end

  def add_note
  end

  def access_note
  end

  def modify_note
  end

  def delete_note
  end
end
