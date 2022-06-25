require './person'
require './teacher'
require './student'
require './book'
require './rental'

class Data
  attr_accessor :person, :book, :rentals

  def initialize
    @person = []
    @book = []
    @rentals = []
  end

  def add_student(age, name, _permission, classroom)
    student_data = Student.new(classroom, age, name)
    @person << student_data
    puts 'Person created successfully'
  end

  def add_teacher(specialization, age, name)
    teacher_data = Teacher.new(specialization, age, name)
    @person << teacher_data
    puts 'Person created successfully'
  end

  def add_book(title, author)
    book_data = Book.new(title, author)
    @book << book_data
    puts 'Book created successfully'
  end

  def add_rental(date, book, person)
    @book.filter_map do |info|
      @title = info.title if info.title == book
      @author = info.author if info.title == book
    end
    book_data = Book.new(@title, @author)

    @person.filter_map do |info|
      @age = info.age if info.name == person
      @name = info.name if info.name == person
    end
    person_data = Person.new(@age, @name)

    rental_data = Rental.new(date, book_data, person_data)
    @rentals << rental_data
    puts 'Rental created successfully'
  end

  def list(value)
    case value
    when 'book'
      if @book.empty?
        puts 'There are no books'
      else
        (@book.map.with_index do |book, index|
          puts "#{index}) Title: #{book.title}, Author: #{book.author}"
        end)
      end
    when 'people'
      if @person.empty?
        puts 'There are no records'
      else
        (@person.map.with_index do |val, index|
          puts "#{index}) Name: #{val.name}, ID: #{val.id}, Age: #{val.age}"
        end)
      end
    end
  end

  def rental_list(value)
    puts "Name: #{value}"
    (@rentals.filter_map do |res|
      puts "Date: #{res.date}, Book '#{res.book.title}' by #{res.book.author}" if res.person.name == value
    end)
  end
end
