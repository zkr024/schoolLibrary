require_relative '../school/rental'
require_relative '../school/book'
require_relative '../school/person'
require_relative './book_list'
require_relative './person_list'

class AddRental
  def add_rental(book, person, rental)
    if book.empty? || person.empty?
      puts 'There are no books or people added'
    else
      puts 'Select a book from the following list by number'
      BookList.new.book_list(book)
      compare = book.length - 1
      option = gets.chomp.to_i
      loop do
        break if option.between?(0, compare)

        puts "#{option} is not a valid entry, try again"
        option = gets.chomp.to_i
      end
      book1 = book.map.with_index { |b, i| b.title if i == option }
      the_book = book1.join
      puts 'Select a person from the following list by number (not id)'
      PersonList.new.person_list(person)
      check = person.length - 1
      choose = gets.chomp.to_i
      loop do
        break if choose.between?(0, check)

        puts "#{choose} is not a valid entry, try again"
        choose = gets.chomp.to_i
      end
      person1 = person.map.with_index { |p, i| p.name if i == choose }
      the_person = person1.join
      print 'Date [YYYY/MM/DD]: '
      date = gets.chomp
      book.filter_map do |info|
        @title = info.title if info.title == the_book
        @author = info.author if info.title == the_book
      end
      book_data = Book.new(@title, @author)

      person.filter_map do |info|
        @age = info.age if info.name == the_person
        @name = info.name if info.name == the_person
      end
      person_data = Person.new(@age, @name)

      rental_data = Rental.new(date, book_data, person_data)
      rental << rental_data
      puts 'Rental created successfully'
    end
  end
end
