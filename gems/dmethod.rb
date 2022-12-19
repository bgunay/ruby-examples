
class Author
  define_method("some_method") do
    puts "Some details"
  end
end

author = Author.new
author.some_method


class Author2
  def fiction_details(arg)
    puts "Fiction"
    puts arg
    puts "blabla1"
  end
  def coding_details(arg)
    puts "Coding"
    puts arg
    puts "blabla2"
  end
  def history_details(arg)
    puts "History"
    puts arg
    puts "blabla3"
  end
end

author = Author2.new
author.coding_details("Cal Newport")

puts ""
puts "Author class concise:"

class Author3
  genres = %w(fiction coding history)
  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre:  #{genre}"
      puts arg
      puts genre
    end
  end
end

author = Author3.new
puts "Coding details:"
author.coding_details("Cal Newport")

puts "Fiction details"
author.fiction_details("Ayn Rand")

puts author.respond_to?(:coding_details)

author.summary