require 'json'
require_relative '../school/book'
require_relative '../school/person'
require_relative '../school/rental'

@file_rental = File.read('./data/rental.json')

def rental_data(rental)
  return if @file_rental.empty?

  data_rental = JSON.parse(@file_rental)
  data_rental.map do |value|
    age = value['Age']
    name = value['Name']
    book = value['Book']
    author = value['Author']
    date = value['Date']
    book_info = Book.new(book, author)
    person_info = Person.new(age, name)
    rental_info = Rental.new(date, book_info, person_info)
    rental << rental_info
  end
end
